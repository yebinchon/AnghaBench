
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ autoneg; int advertising; } ;


 scalar_t__ AUTONEG_DISABLE ;
 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int MDIO_AN_VEND_PROV ;
 int MDIO_AN_VEND_PROV_1000BASET_FULL ;
 int MDIO_AN_VEND_PROV_1000BASET_HALF ;
 int MDIO_MMD_AN ;
 int genphy_c45_an_config_aneg (struct phy_device*) ;
 int genphy_c45_check_and_restart_aneg (struct phy_device*,int) ;
 int genphy_c45_pma_setup_forced (struct phy_device*) ;
 scalar_t__ linkmode_test_bit (int ,int ) ;
 int phy_modify_mmd_changed (struct phy_device*,int ,int ,int,int) ;

__attribute__((used)) static int aqr_config_aneg(struct phy_device *phydev)
{
 bool changed = 0;
 u16 reg;
 int ret;

 if (phydev->autoneg == AUTONEG_DISABLE)
  return genphy_c45_pma_setup_forced(phydev);

 ret = genphy_c45_an_config_aneg(phydev);
 if (ret < 0)
  return ret;
 if (ret > 0)
  changed = 1;




 reg = 0;
 if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
         phydev->advertising))
  reg |= MDIO_AN_VEND_PROV_1000BASET_FULL;

 if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
         phydev->advertising))
  reg |= MDIO_AN_VEND_PROV_1000BASET_HALF;

 ret = phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MDIO_AN_VEND_PROV,
         MDIO_AN_VEND_PROV_1000BASET_HALF |
         MDIO_AN_VEND_PROV_1000BASET_FULL, reg);
 if (ret < 0)
  return ret;
 if (ret > 0)
  changed = 1;

 return genphy_c45_check_and_restart_aneg(phydev, changed);
}
