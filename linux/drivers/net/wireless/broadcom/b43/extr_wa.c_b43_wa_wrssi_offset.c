
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_OFDMTAB_WRSSI ;
 int B43_OFDMTAB_WRSSI_R1 ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void b43_wa_wrssi_offset(struct b43_wldev *dev)
{
 int i;

 if (dev->phy.rev == 1) {
  for (i = 0; i < 16; i++) {
   b43_ofdmtab_write16(dev, B43_OFDMTAB_WRSSI_R1,
      i, 0x0020);
  }
 } else {
  for (i = 0; i < 32; i++) {
   b43_ofdmtab_write16(dev, B43_OFDMTAB_WRSSI,
      i, 0x0820);
  }
 }
}
