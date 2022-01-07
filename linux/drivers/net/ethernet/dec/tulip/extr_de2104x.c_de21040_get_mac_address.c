
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct de_private {TYPE_1__* dev; } ;
struct TYPE_2__ {int* dev_addr; } ;


 int ROMCmd ;
 int dr32 (int ) ;
 int dw32 (int ,int ) ;
 int pr_warn (char*,unsigned int) ;
 int rmb () ;
 int udelay (int) ;

__attribute__((used)) static void de21040_get_mac_address(struct de_private *de)
{
 unsigned i;

 dw32 (ROMCmd, 0);
 udelay(5);

 for (i = 0; i < 6; i++) {
  int value, boguscnt = 100000;
  do {
   value = dr32(ROMCmd);
   rmb();
  } while (value < 0 && --boguscnt > 0);
  de->dev->dev_addr[i] = value;
  udelay(1);
  if (boguscnt <= 0)
   pr_warn("timeout reading 21040 MAC address byte %u\n",
    i);
 }
}
