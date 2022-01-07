
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int ENODEV ;
 int MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT ;
 scalar_t__ PHY_INTERFACE_MODE_10GKR ;
 scalar_t__ PHY_INTERFACE_MODE_2500BASEX ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 scalar_t__ PHY_INTERFACE_MODE_USXGMII ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int WARN (int,char*) ;
 int aqr107_chip_info (struct phy_device*) ;
 int aqr107_read_downshift_event (struct phy_device*) ;
 int aqr107_set_downshift (struct phy_device*,int ) ;
 int aqr107_wait_reset_complete (struct phy_device*) ;

__attribute__((used)) static int aqr107_config_init(struct phy_device *phydev)
{
 int ret;


 if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
     phydev->interface != PHY_INTERFACE_MODE_2500BASEX &&
     phydev->interface != PHY_INTERFACE_MODE_XGMII &&
     phydev->interface != PHY_INTERFACE_MODE_USXGMII &&
     phydev->interface != PHY_INTERFACE_MODE_10GKR)
  return -ENODEV;

 WARN(phydev->interface == PHY_INTERFACE_MODE_XGMII,
      "Your devicetree is out of date, please update it. The AQR107 family doesn't support XGMII, maybe you mean USXGMII.\n");

 ret = aqr107_wait_reset_complete(phydev);
 if (!ret)
  aqr107_chip_info(phydev);


 aqr107_read_downshift_event(phydev);

 return aqr107_set_downshift(phydev, MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT);
}
