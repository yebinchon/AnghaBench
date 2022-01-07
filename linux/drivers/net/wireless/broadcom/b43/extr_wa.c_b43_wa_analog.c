
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_OFDMTAB_DAC ;
 int B43_PHYVER_VERSION ;
 int B43_PHY_PWRDOWN ;
 int B43_PHY_VERSION_OFDM ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_wa_analog(struct b43_wldev *dev)
{
 u16 ofdmrev;

 ofdmrev = b43_phy_read(dev, B43_PHY_VERSION_OFDM) & B43_PHYVER_VERSION;
 if (ofdmrev > 2) {
  b43_phy_write(dev, B43_PHY_PWRDOWN, 0x1000);
 } else {
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 3, 0x1044);
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 4, 0x7201);
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 6, 0x0040);
 }
}
