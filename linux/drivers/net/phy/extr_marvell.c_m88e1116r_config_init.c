
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdix_ctrl; } ;


 int MII_MARVELL_COPPER_PAGE ;
 int genphy_soft_reset (struct phy_device*) ;
 int m88e1121_config_aneg_rgmii_delays (struct phy_device*) ;
 int marvell_config_init (struct phy_device*) ;
 int marvell_set_downshift (struct phy_device*,int,int) ;
 int marvell_set_page (struct phy_device*,int ) ;
 int marvell_set_polarity (struct phy_device*,int ) ;
 int msleep (int) ;
 scalar_t__ phy_interface_is_rgmii (struct phy_device*) ;

__attribute__((used)) static int m88e1116r_config_init(struct phy_device *phydev)
{
 int err;

 err = genphy_soft_reset(phydev);
 if (err < 0)
  return err;

 msleep(500);

 err = marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
 if (err < 0)
  return err;

 err = marvell_set_polarity(phydev, phydev->mdix_ctrl);
 if (err < 0)
  return err;

 err = marvell_set_downshift(phydev, 1, 8);
 if (err < 0)
  return err;

 if (phy_interface_is_rgmii(phydev)) {
  err = m88e1121_config_aneg_rgmii_delays(phydev);
  if (err < 0)
   return err;
 }

 err = genphy_soft_reset(phydev);
 if (err < 0)
  return err;

 return marvell_config_init(phydev);
}
