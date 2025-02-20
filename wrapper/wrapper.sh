#! /bin/sh

if grep -q "Pi 4" /proc/cpuinfo; then
  EXTRAOPTS="--disable-gpu"
fi

export HOME_URL="$(snapctl get url)"

exec $SNAP/electron-helloworld/electron-quick-start \
	--enable-features=UseOzonePlatform \
	--ozone-platform=wayland \
	--disable-dev-shm-usage \
	--enable-wayland-ime \
	--no-sandbox $EXTRAOPTS
