
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int MII_MARVELL_COPPER_PAGE ;
 int MII_MARVELL_FIBER_PAGE ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int m88e1318_config_aneg (struct phy_device*) ;
 int marvell_config_aneg_fiber (struct phy_device*) ;
 int marvell_set_page (struct phy_device*,int ) ;

__attribute__((used)) static int m88e1510_config_aneg(struct phy_device *phydev)
{
 int err;

 err = marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
 if (err < 0)
  goto error;


 err = m88e1318_config_aneg(phydev);
 if (err < 0)
  goto error;


 if (phydev->interface == PHY_INTERFACE_MODE_SGMII)
  return 0;


 err = marvell_set_page(phydev, MII_MARVELL_FIBER_PAGE);
 if (err < 0)
  goto error;

 err = marvell_config_aneg_fiber(phydev);
 if (err < 0)
  goto error;

 return marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);

error:
 marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
 return err;
}
