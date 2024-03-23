# syntax=docker/dockerfile:1
#------------------------------------------------------------------------------------#
FROM alpine:edge
#------------------------------------------------------------------------------------#
##Base Deps :: https://pkgs.alpinelinux.org/packages
RUN <<EOS
  apk update && apk upgrade --no-interactive
  apk add alsa-lib --latest --upgrade --no-interactive
  apk add alsa-lib-dev --latest --upgrade --no-interactive
  apk add aria2 --latest --upgrade --no-interactive
  apk add automake --latest --upgrade --no-interactive
  apk add b3sum --latest --upgrade --no-interactive
  apk add bash --latest --upgrade --no-interactive
  apk add bc --latest --upgrade --no-interactive
  apk add bearssl --latest --upgrade --no-interactive
  apk add bearssl-dev --latest --upgrade --no-interactive
  apk add bearssl-libs --latest --upgrade --no-interactive
  apk add bearssl-static --latest --upgrade --no-interactive
  apk add bind-tools --latest --upgrade --no-interactive
  apk add binutils --latest --upgrade --no-interactive
  apk add build-base --latest --upgrade --no-interactive
  apk add ca-certificates --latest --upgrade --no-interactive
  apk add ccache --latest --upgrade --no-interactive
  apk add clang --latest --upgrade --no-interactive
  apk add cmake --latest --upgrade --no-interactive
  apk add coreutils --latest --upgrade --no-interactive
  apk add croc --latest --upgrade --no-interactive
  apk add curl --latest --upgrade --no-interactive
  apk add curl-dev --latest --upgrade --no-interactive
  apk add dbus --latest --upgrade --no-interactive
  apk add dbus-cpp --latest --upgrade --no-interactive
  apk add dbus-glib --latest --upgrade --no-interactive
  apk add dbus-libs --latest --upgrade --no-interactive
  apk add diffutils --latest --upgrade --no-interactive
  apk add dos2unix --latest --upgrade --no-interactive
  apk add gawk --latest --upgrade --no-interactive
  apk add gcc --latest --upgrade --no-interactive
  apk add git --latest --upgrade --no-interactive
  apk add glib --latest --upgrade --no-interactive
  apk add glib-dev --latest --upgrade --no-interactive
  apk add go --latest --upgrade --no-interactive
  apk add gnupg --latest --upgrade --no-interactive
  apk add iputils --latest --upgrade --no-interactive
  apk add jq --latest --upgrade --no-interactive
  apk add libcurl --latest --upgrade --no-interactive
  apk add libdbusmenu-glib --latest --upgrade --no-interactive
  apk add libdbusmenu-glib-dev --latest --upgrade --no-interactive
  apk add libncurses++ --latest --upgrade --no-interactive
  apk add libncursesw --latest --upgrade --no-interactive
  apk add libprotobuf --latest --upgrade --no-interactive
  apk add libpq --latest --upgrade --no-interactive
  apk add libpq-dev --latest --upgrade --no-interactive
  apk add libssh2 --latest --upgrade --no-interactive
  apk add libssh2-dev --latest --upgrade --no-interactive
  apk add libssh2-static --latest --upgrade --no-interactive
  apk add libtool --latest --upgrade --no-interactive
  apk add libxml2 --latest --upgrade --no-interactive
  apk add libxml2-static --latest --upgrade --no-interactive
  apk add libxml2-utils --latest --upgrade --no-interactive
  apk add linux-headers --latest --upgrade --no-interactive
  apk add linux-pam --latest --upgrade --no-interactive
  apk add linux-pam-dev --latest --upgrade --no-interactive
  apk add lm-sensors --latest --upgrade --no-interactive
  apk add lm-sensors-dev --latest --upgrade --no-interactive
  apk add lm-sensors-libs --latest --upgrade --no-interactive
  apk add lzip --latest --upgrade --no-interactive
  apk add make --latest --upgrade --no-interactive
  apk add mariadb --latest --upgrade --no-interactive
  apk add mariadb-dev --latest --upgrade --no-interactive
  apk add mariadb-static --latest --upgrade --no-interactive
  apk add meson --latest --upgrade --no-interactive
  apk add mlocate --latest --upgrade --no-interactive
  apk add mold --latest --upgrade --no-interactive
  apk add moreutils --latest --upgrade --no-interactive
  apk add musl --latest --upgrade --no-interactive
  apk add musl-dev --latest --upgrade --no-interactive
  apk add musl-utils --latest --upgrade --no-interactive
  apk add nano --latest --upgrade --no-interactive
  apk add ncdu --latest --upgrade --no-interactive
  apk add ncurses --latest --upgrade --no-interactive
  apk add ncurses-dev --latest --upgrade --no-interactive
  apk add ncurses-libs --latest --upgrade --no-interactive
  apk add ncurses-static --latest --upgrade --no-interactive
  apk add netcat-openbsd --latest --upgrade --no-interactive
  apk add net-tools --latest --upgrade --no-interactive
  apk add ninja-build --latest --upgrade --no-interactive
  apk add nodejs-current --latest --upgrade --no-interactive
  apk add openssh --latest --upgrade --no-interactive
  apk add openssl --latest --upgrade --no-interactive
  apk add openssl-dev --latest --upgrade --no-interactive
  apk add openssl-libs-static --latest --upgrade --no-interactive
  apk add patchelf --latest --upgrade --no-interactive
  apk add pciutils --latest --upgrade --no-interactive
  apk add pciutils-dev --latest --upgrade --no-interactive
  apk add pciutils-libs --latest --upgrade --no-interactive
  apk add pkgconfig --latest --upgrade --no-interactive
  apk add postgresql16 --latest --upgrade --no-interactive
  apk add postgresql16-dev --latest --upgrade --no-interactive
  apk add procps --latest --upgrade --no-interactive
  apk add protobuf --latest --upgrade --no-interactive
  apk add protobuf-c --latest --upgrade --no-interactive
  apk add protobuf-c-compiler --latest --upgrade --no-interactive
  apk add protobuf-dev --latest --upgrade --no-interactive
  apk add python3-dev --latest --upgrade --no-interactive
  apk add py3-distro --latest --upgrade --no-interactive
  apk add py3-netifaces --latest --upgrade --no-interactive
  apk add py3-pip --latest --upgrade --no-interactive
  apk add pipx --latest --upgrade --no-interactive
  apk add pkgconf --latest --upgrade --no-interactive
  apk add pkgconf-dev --latest --upgrade --no-interactive
  apk add qemu --latest --upgrade --no-interactive
  apk add qemu-tools --latest --upgrade --no-interactive
  apk add qemu-aarch64 --latest --upgrade --no-interactive
  apk add qemu-system-aarch64 --latest --upgrade --no-interactive
  apk add qemu-x86_64 --latest --upgrade --no-interactive
  apk add qemu-system-x86_64 --latest --upgrade --no-interactive
  apk add rsync --latest --upgrade --no-interactive
  apk add rustup --latest --upgrade --no-interactive ; rustup-init -y
  apk add samurai --latest --upgrade --no-interactive
  apk add scons --latest --upgrade --no-interactive
  apk add sqlite --latest --upgrade --no-interactive
  apk add sqlite-dev --latest --upgrade --no-interactive
  apk add sqlite-libs --latest --upgrade --no-interactive
  apk add sqlite-static --latest --upgrade --no-interactive
  apk add sudo --latest --upgrade --no-interactive
  apk add sysfsutils --latest --upgrade --no-interactive
  apk add sysfsutils-dev --latest --upgrade --no-interactive
  apk add sysfsutils-static --latest --upgrade --no-interactive
  apk add tar --latest --upgrade --no-interactive
  apk add texinfo --latest --upgrade --no-interactive
  apk add tinyalsa --latest --upgrade --no-interactive
  apk add tinyalsa-dev --latest --upgrade --no-interactive
  apk add tinyalsa-libs --latest --upgrade --no-interactive
  apk add tinyalsa-static --latest --upgrade --no-interactive
  apk add tzdata --latest --upgrade --no-interactive
  apk add ufw --latest --upgrade --no-interactive
  apk add util-linux --latest --upgrade --no-interactive
  apk add virt-what --latest --upgrade --no-interactive
  apk add wget --latest --upgrade --no-interactive
  apk add wolfssl --latest --upgrade --no-interactive
  apk add wolfssl-dev --latest --upgrade --no-interactive
  apk add xz --latest --upgrade --no-interactive
  apk add xz-dev --latest --upgrade --no-interactive
  apk add xz-libs --latest --upgrade --no-interactive
  apk add zlib --latest --upgrade --no-interactive
  apk add zlib-static --latest --upgrade --no-interactive
  apk add zstd --latest --upgrade --no-interactive
  apk add zstd-static --latest --upgrade --no-interactive
  apk add 7zip --latest --upgrade --no-interactive
 #Stats
  apk stats 
EOS
#END