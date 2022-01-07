
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_NPHY_AFECTL_C1 ;
 int B43_NPHY_AFECTL_C2 ;
 int B43_NPHY_AFECTL_OVER ;
 int B43_NPHY_AFECTL_OVER1 ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_op_switch_analog(struct b43_wldev *dev, bool on)
{
 struct b43_phy *phy = &dev->phy;
 u16 override = on ? 0x0 : 0x7FFF;
 u16 core = on ? 0xD : 0x00FD;

 if (phy->rev >= 19) {

 } else if (phy->rev >= 3) {
  if (on) {
   b43_phy_write(dev, B43_NPHY_AFECTL_C1, core);
   b43_phy_write(dev, B43_NPHY_AFECTL_OVER1, override);
   b43_phy_write(dev, B43_NPHY_AFECTL_C2, core);
   b43_phy_write(dev, B43_NPHY_AFECTL_OVER, override);
  } else {
   b43_phy_write(dev, B43_NPHY_AFECTL_OVER1, override);
   b43_phy_write(dev, B43_NPHY_AFECTL_C1, core);
   b43_phy_write(dev, B43_NPHY_AFECTL_OVER, override);
   b43_phy_write(dev, B43_NPHY_AFECTL_C2, core);
  }
 } else {
  b43_phy_write(dev, B43_NPHY_AFECTL_OVER, override);
 }
}
