
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int MII_M1111_PHY_EXT_CR ;
 int MII_M1111_RGMII_RX_DELAY ;
 int MII_M1111_RGMII_TX_DELAY ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int phy_modify (struct phy_device*,int ,int,int) ;

__attribute__((used)) static int m88e1111_config_init_rgmii_delays(struct phy_device *phydev)
{
 int delay;

 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) {
  delay = MII_M1111_RGMII_RX_DELAY | MII_M1111_RGMII_TX_DELAY;
 } else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {
  delay = MII_M1111_RGMII_RX_DELAY;
 } else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {
  delay = MII_M1111_RGMII_TX_DELAY;
 } else {
  delay = 0;
 }

 return phy_modify(phydev, MII_M1111_PHY_EXT_CR,
     MII_M1111_RGMII_RX_DELAY | MII_M1111_RGMII_TX_DELAY,
     delay);
}
