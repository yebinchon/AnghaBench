
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int mdix_ctrl; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int MII_M1111_PHY_LED_CONTROL ;
 int MII_M1111_PHY_LED_DIRECT ;
 int genphy_config_aneg (struct phy_device*) ;
 int genphy_soft_reset (struct phy_device*) ;
 int marvell_set_polarity (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int marvell_config_aneg(struct phy_device *phydev)
{
 int changed = 0;
 int err;

 err = marvell_set_polarity(phydev, phydev->mdix_ctrl);
 if (err < 0)
  return err;

 changed = err;

 err = phy_write(phydev, MII_M1111_PHY_LED_CONTROL,
   MII_M1111_PHY_LED_DIRECT);
 if (err < 0)
  return err;

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
