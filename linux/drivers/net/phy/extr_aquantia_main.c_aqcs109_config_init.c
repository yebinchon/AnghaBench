
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int ENODEV ;
 int MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT ;
 scalar_t__ PHY_INTERFACE_MODE_2500BASEX ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int SPEED_2500 ;
 int aqr107_chip_info (struct phy_device*) ;
 int aqr107_read_downshift_event (struct phy_device*) ;
 int aqr107_set_downshift (struct phy_device*,int ) ;
 int aqr107_wait_reset_complete (struct phy_device*) ;
 int phy_set_max_speed (struct phy_device*,int ) ;

__attribute__((used)) static int aqcs109_config_init(struct phy_device *phydev)
{
 int ret;


 if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
     phydev->interface != PHY_INTERFACE_MODE_2500BASEX)
  return -ENODEV;

 ret = aqr107_wait_reset_complete(phydev);
 if (!ret)
  aqr107_chip_info(phydev);





 ret = phy_set_max_speed(phydev, SPEED_2500);
 if (ret)
  return ret;


 aqr107_read_downshift_event(phydev);

 return aqr107_set_downshift(phydev, MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT);
}
