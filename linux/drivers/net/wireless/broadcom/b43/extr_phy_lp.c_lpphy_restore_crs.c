
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_LPPHY_RF_OVERRIDE_0 ;
 int B43_LPPHY_RF_OVERRIDE_2 ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int lpphy_clear_deaf (struct b43_wldev*,int) ;

__attribute__((used)) static void lpphy_restore_crs(struct b43_wldev *dev, bool user)
{
 lpphy_clear_deaf(dev, user);
 b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_0, 0xFF80);
 b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_2, 0xFC00);
}
