
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {scalar_t__ autoneg; int advertising; int mdix_ctrl; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 scalar_t__ AUTONEG_DISABLE ;
 int ETH_TP_MDI_AUTO ;
 int MDIO_MMD_AN ;
 int MV_AN_CTRL1000 ;
 int genphy_c45_an_config_aneg (struct phy_device*) ;
 int genphy_c45_check_and_restart_aneg (struct phy_device*,int) ;
 int genphy_c45_pma_setup_forced (struct phy_device*) ;
 int linkmode_adv_to_mii_ctrl1000_t (int ) ;
 int phy_modify_mmd_changed (struct phy_device*,int ,int ,int,int ) ;

__attribute__((used)) static int mv3310_config_aneg(struct phy_device *phydev)
{
 bool changed = 0;
 u16 reg;
 int ret;


 phydev->mdix_ctrl = ETH_TP_MDI_AUTO;

 if (phydev->autoneg == AUTONEG_DISABLE)
  return genphy_c45_pma_setup_forced(phydev);

 ret = genphy_c45_an_config_aneg(phydev);
 if (ret < 0)
  return ret;
 if (ret > 0)
  changed = 1;




 reg = linkmode_adv_to_mii_ctrl1000_t(phydev->advertising);
 ret = phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MV_AN_CTRL1000,
        ADVERTISE_1000FULL | ADVERTISE_1000HALF, reg);
 if (ret < 0)
  return ret;
 if (ret > 0)
  changed = 1;

 return genphy_c45_check_and_restart_aneg(phydev, changed);
}
