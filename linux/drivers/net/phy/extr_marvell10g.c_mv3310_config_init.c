
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int ENODEV ;
 scalar_t__ PHY_INTERFACE_MODE_10GKR ;
 scalar_t__ PHY_INTERFACE_MODE_2500BASEX ;
 scalar_t__ PHY_INTERFACE_MODE_RXAUI ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 scalar_t__ PHY_INTERFACE_MODE_XAUI ;

__attribute__((used)) static int mv3310_config_init(struct phy_device *phydev)
{

 if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
     phydev->interface != PHY_INTERFACE_MODE_2500BASEX &&
     phydev->interface != PHY_INTERFACE_MODE_XAUI &&
     phydev->interface != PHY_INTERFACE_MODE_RXAUI &&
     phydev->interface != PHY_INTERFACE_MODE_10GKR)
  return -ENODEV;

 return 0;
}
