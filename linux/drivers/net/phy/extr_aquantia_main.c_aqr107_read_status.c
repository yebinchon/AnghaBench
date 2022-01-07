
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int interface; int link; } ;


 scalar_t__ AUTONEG_DISABLE ;
 int FIELD_GET (int ,int) ;
 int MDIO_MMD_PHYXS ;
 int MDIO_PHYXS_VEND_IF_STATUS ;

 int MDIO_PHYXS_VEND_IF_STATUS_TYPE_MASK ;




 int PHY_INTERFACE_MODE_10GKR ;
 int PHY_INTERFACE_MODE_2500BASEX ;
 int PHY_INTERFACE_MODE_NA ;
 int PHY_INTERFACE_MODE_SGMII ;
 int PHY_INTERFACE_MODE_USXGMII ;
 int aqr107_read_downshift_event (struct phy_device*) ;
 int aqr107_read_rate (struct phy_device*) ;
 int aqr_read_status (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phydev_warn (struct phy_device*,char*) ;

__attribute__((used)) static int aqr107_read_status(struct phy_device *phydev)
{
 int val, ret;

 ret = aqr_read_status(phydev);
 if (ret)
  return ret;

 if (!phydev->link || phydev->autoneg == AUTONEG_DISABLE)
  return 0;

 val = phy_read_mmd(phydev, MDIO_MMD_PHYXS, MDIO_PHYXS_VEND_IF_STATUS);
 if (val < 0)
  return val;

 switch (FIELD_GET(MDIO_PHYXS_VEND_IF_STATUS_TYPE_MASK, val)) {
 case 132:
 case 128:
  phydev->interface = PHY_INTERFACE_MODE_10GKR;
  break;
 case 129:
  phydev->interface = PHY_INTERFACE_MODE_USXGMII;
  break;
 case 130:
  phydev->interface = PHY_INTERFACE_MODE_SGMII;
  break;
 case 131:
  phydev->interface = PHY_INTERFACE_MODE_2500BASEX;
  break;
 default:
  phydev->interface = PHY_INTERFACE_MODE_NA;
  break;
 }

 val = aqr107_read_downshift_event(phydev);
 if (val <= 0)
  return val;

 phydev_warn(phydev, "Downshift occurred! Cabling may be defective.\n");


 return aqr107_read_rate(phydev);
}
