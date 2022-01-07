
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int at803x_disable_rx_delay (struct phy_device*) ;
 int at803x_disable_tx_delay (struct phy_device*) ;
 int at803x_enable_rx_delay (struct phy_device*) ;
 int at803x_enable_tx_delay (struct phy_device*) ;

__attribute__((used)) static int at803x_config_init(struct phy_device *phydev)
{
 int ret;






 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
     phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
  ret = at803x_enable_rx_delay(phydev);
 else
  ret = at803x_disable_rx_delay(phydev);
 if (ret < 0)
  return ret;

 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
     phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
  ret = at803x_enable_tx_delay(phydev);
 else
  ret = at803x_disable_tx_delay(phydev);

 return ret;
}
