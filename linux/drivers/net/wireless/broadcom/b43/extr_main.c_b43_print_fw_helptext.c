
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wl {int dummy; } ;


 int b43err (struct b43_wl*,char const*) ;
 int b43warn (struct b43_wl*,char const*) ;

__attribute__((used)) static void b43_print_fw_helptext(struct b43_wl *wl, bool error)
{
 const char text[] =
  "You must go to " "http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware " "and download the correct firmware for this driver version. " "Please carefully read all instructions on this website.\n";




 if (error)
  b43err(wl, text);
 else
  b43warn(wl, text);
}
