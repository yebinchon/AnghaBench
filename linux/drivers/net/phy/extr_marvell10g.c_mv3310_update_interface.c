
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; int speed; scalar_t__ link; } ;


 scalar_t__ PHY_INTERFACE_MODE_10GKR ;
 scalar_t__ PHY_INTERFACE_MODE_2500BASEX ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;






__attribute__((used)) static void mv3310_update_interface(struct phy_device *phydev)
{
 if ((phydev->interface == PHY_INTERFACE_MODE_SGMII ||
      phydev->interface == PHY_INTERFACE_MODE_2500BASEX ||
      phydev->interface == PHY_INTERFACE_MODE_10GKR) && phydev->link) {






  switch (phydev->speed) {
  case 129:
   phydev->interface = PHY_INTERFACE_MODE_10GKR;
   break;
  case 128:
   phydev->interface = PHY_INTERFACE_MODE_2500BASEX;
   break;
  case 130:
  case 131:
  case 132:
   phydev->interface = PHY_INTERFACE_MODE_SGMII;
   break;
  default:
   break;
  }
 }
}
