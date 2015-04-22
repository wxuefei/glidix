.PHONY: all
all: out/cp out/sudo out/mip-install out/passwd out/mkdir out/chown out/ls out/rmmod out/login out/chgrp out/insmod out/whoami out/whois out/env out/stat out/pwdsetup out/rm out/umount out/crypt out/mkmip out/chmod out/touch out/cat
out/cp: src/cp.c
	x86_64-glidix-gcc $< -o $@ 
out/sudo: src/sudo.c
	x86_64-glidix-gcc $< -o $@ -lcrypt
	chmod 6755 $@
out/mip-install: src/mip-install.c
	x86_64-glidix-gcc $< -o $@ 
out/passwd: src/passwd.c
	x86_64-glidix-gcc $< -o $@ -lcrypt
	chmod 6755 $@
out/mkdir: src/mkdir.c
	x86_64-glidix-gcc $< -o $@ 
out/chown: src/chown.c
	x86_64-glidix-gcc $< -o $@ 
out/ls: src/ls.c
	x86_64-glidix-gcc $< -o $@ 
out/rmmod: src/rmmod.c
	x86_64-glidix-gcc $< -o $@ 
out/login: src/login.c
	x86_64-glidix-gcc $< -o $@ -lcrypt
out/chgrp: src/chgrp.c
	x86_64-glidix-gcc $< -o $@ 
out/insmod: src/insmod.c
	x86_64-glidix-gcc $< -o $@ 
out/whoami: src/whoami.c
	x86_64-glidix-gcc $< -o $@ 
out/whois: src/whois.c
	x86_64-glidix-gcc $< -o $@ 
out/env: src/env.c
	x86_64-glidix-gcc $< -o $@ 
out/stat: src/stat.c
	x86_64-glidix-gcc $< -o $@ 
out/pwdsetup: src/pwdsetup.c
	x86_64-glidix-gcc $< -o $@ -lcrypt
out/rm: src/rm.c
	x86_64-glidix-gcc $< -o $@ 
out/umount: src/umount.c
	x86_64-glidix-gcc $< -o $@ 
out/crypt: src/crypt.c
	x86_64-glidix-gcc $< -o $@ -lcrypt
out/mkmip: src/mkmip.c
	x86_64-glidix-gcc $< -o $@ 
out/chmod: src/chmod.c
	x86_64-glidix-gcc $< -o $@ 
out/touch: src/touch.c
	x86_64-glidix-gcc $< -o $@ 
out/cat: src/cat.c
	x86_64-glidix-gcc $< -o $@ 