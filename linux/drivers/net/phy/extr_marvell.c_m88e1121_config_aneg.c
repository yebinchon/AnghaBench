
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int mdix_ctrl; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int genphy_config_aneg (struct phy_device*) ;
 int genphy_soft_reset (struct phy_device*) ;
 int m88e1121_config_aneg_rgmii_delays (struct phy_device*) ;
 int marvell_set_polarity (struct phy_device*,int ) ;
 scalar_t__ phy_interface_is_rgmii (struct phy_device*) ;

__attribute__((used)) static int m88e1121_config_aneg(struct phy_device *phydev)
{
 int changed = 0;
 int err = 0;

 if (phy_interface_is_rgmii(phydev)) {
  err = m88e1121_config_aneg_rgmii_delays(phydev);
  if (err < 0)
   return err;
 }

 err = marvell_set_polarity(phydev, phydev->mdix_ctrl);
 if (err < 0)
  return err;

 changed = err;

 err = genphy_config_aneg(phydev);
 if (err < 0)
  return err;

 if (phydev->autoneg != AUTONEG_ENABLE || changed) {



  err = genphy_soft_reset(phydev);
  if (err < 0)
   return err;
 }

 return 0;
}
