
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_PHY_ENCORE ;
 int B43_PHY_ENCORE_EN ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_tab_noisescaleg1 ;
 int b43_tab_noisescaleg2 ;
 int b43_tab_noisescaleg3 ;
 int b43_write_nst (struct b43_wldev*,int ) ;

__attribute__((used)) static void b43_wa_nst(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 if (phy->rev >= 6) {
  if (b43_phy_read(dev, B43_PHY_ENCORE) & B43_PHY_ENCORE_EN)
   b43_write_nst(dev, b43_tab_noisescaleg3);
  else
   b43_write_nst(dev, b43_tab_noisescaleg2);
 } else {
  b43_write_nst(dev, b43_tab_noisescaleg1);
 }
}
