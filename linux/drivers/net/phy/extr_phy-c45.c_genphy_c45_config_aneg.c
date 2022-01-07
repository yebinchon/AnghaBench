
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_DISABLE ;
 int genphy_c45_an_config_aneg (struct phy_device*) ;
 int genphy_c45_check_and_restart_aneg (struct phy_device*,int) ;
 int genphy_c45_pma_setup_forced (struct phy_device*) ;

int genphy_c45_config_aneg(struct phy_device *phydev)
{
 bool changed = 0;
 int ret;

 if (phydev->autoneg == AUTONEG_DISABLE)
  return genphy_c45_pma_setup_forced(phydev);

 ret = genphy_c45_an_config_aneg(phydev);
 if (ret < 0)
  return ret;
 if (ret > 0)
  changed = 1;

 return genphy_c45_check_and_restart_aneg(phydev, changed);
}
