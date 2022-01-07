
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ autoneg; int advertising; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int ETHTOOL_LINK_MODE_2500baseT_Full_BIT ;
 int RTL_ADV_2500FULL ;
 int __genphy_config_aneg (struct phy_device*,int) ;
 scalar_t__ linkmode_test_bit (int ,int ) ;
 int phy_modify_paged_changed (struct phy_device*,int,int,int ,int ) ;

__attribute__((used)) static int rtl8125_config_aneg(struct phy_device *phydev)
{
 int ret = 0;

 if (phydev->autoneg == AUTONEG_ENABLE) {
  u16 adv2500 = 0;

  if (linkmode_test_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
          phydev->advertising))
   adv2500 = RTL_ADV_2500FULL;

  ret = phy_modify_paged_changed(phydev, 0xa5d, 0x12,
            RTL_ADV_2500FULL, adv2500);
  if (ret < 0)
   return ret;
 }

 return __genphy_config_aneg(phydev, ret);
}
