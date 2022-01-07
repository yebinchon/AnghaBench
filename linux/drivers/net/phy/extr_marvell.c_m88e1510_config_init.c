
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int MII_88E1510_GEN_CTRL_REG_1 ;
 int MII_88E1510_GEN_CTRL_REG_1_MODE_MASK ;
 int MII_88E1510_GEN_CTRL_REG_1_MODE_SGMII ;
 int MII_88E1510_GEN_CTRL_REG_1_RESET ;
 int MII_MARVELL_COPPER_PAGE ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int m88e1318_config_init (struct phy_device*) ;
 int marvell_set_page (struct phy_device*,int) ;
 int phy_modify (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int m88e1510_config_init(struct phy_device *phydev)
{
 int err;


 if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {

  err = marvell_set_page(phydev, 18);
  if (err < 0)
   return err;


  err = phy_modify(phydev, MII_88E1510_GEN_CTRL_REG_1,
     MII_88E1510_GEN_CTRL_REG_1_MODE_MASK,
     MII_88E1510_GEN_CTRL_REG_1_MODE_SGMII);
  if (err < 0)
   return err;


  err = phy_modify(phydev, MII_88E1510_GEN_CTRL_REG_1, 0,
     MII_88E1510_GEN_CTRL_REG_1_RESET);
  if (err < 0)
   return err;


  err = marvell_set_page(phydev, MII_MARVELL_COPPER_PAGE);
  if (err < 0)
   return err;
 }

 return m88e1318_config_init(phydev);
}
