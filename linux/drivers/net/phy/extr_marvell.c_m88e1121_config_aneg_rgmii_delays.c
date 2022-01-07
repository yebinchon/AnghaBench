
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int MII_88E1121_PHY_MSCR_DELAY_MASK ;
 int MII_88E1121_PHY_MSCR_REG ;
 int MII_88E1121_PHY_MSCR_RX_DELAY ;
 int MII_88E1121_PHY_MSCR_TX_DELAY ;
 int MII_MARVELL_MSCR_PAGE ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int phy_modify_paged (struct phy_device*,int ,int ,int ,int) ;

__attribute__((used)) static int m88e1121_config_aneg_rgmii_delays(struct phy_device *phydev)
{
 int mscr;

 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID)
  mscr = MII_88E1121_PHY_MSCR_RX_DELAY |
         MII_88E1121_PHY_MSCR_TX_DELAY;
 else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
  mscr = MII_88E1121_PHY_MSCR_RX_DELAY;
 else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
  mscr = MII_88E1121_PHY_MSCR_TX_DELAY;
 else
  mscr = 0;

 return phy_modify_paged(phydev, MII_MARVELL_MSCR_PAGE,
    MII_88E1121_PHY_MSCR_REG,
    MII_88E1121_PHY_MSCR_DELAY_MASK, mscr);
}
