
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 scalar_t__ PHY_INTERFACE_MODE_RTBI ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int genphy_soft_reset (struct phy_device*) ;
 int m88e1111_config_init_rgmii (struct phy_device*) ;
 int m88e1111_config_init_rtbi (struct phy_device*) ;
 int m88e1111_config_init_sgmii (struct phy_device*) ;
 int marvell_of_reg_init (struct phy_device*) ;
 scalar_t__ phy_interface_is_rgmii (struct phy_device*) ;

__attribute__((used)) static int m88e1111_config_init(struct phy_device *phydev)
{
 int err;

 if (phy_interface_is_rgmii(phydev)) {
  err = m88e1111_config_init_rgmii(phydev);
  if (err < 0)
   return err;
 }

 if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
  err = m88e1111_config_init_sgmii(phydev);
  if (err < 0)
   return err;
 }

 if (phydev->interface == PHY_INTERFACE_MODE_RTBI) {
  err = m88e1111_config_init_rtbi(phydev);
  if (err < 0)
   return err;
 }

 err = marvell_of_reg_init(phydev);
 if (err < 0)
  return err;

 return genphy_soft_reset(phydev);
}
