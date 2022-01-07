
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wl {int dummy; } ;


 int b43legacyerr (struct b43legacy_wl*,char*) ;

__attribute__((used)) static void b43legacy_print_fw_helptext(struct b43legacy_wl *wl)
{
 b43legacyerr(wl, "You must go to http://wireless.kernel.org/en/users/"
       "Drivers/b43#devicefirmware "
       "and download the correct firmware (version 3).\n");
}
