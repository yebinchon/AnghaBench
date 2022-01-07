
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int lp_advertising; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int MDIO_AN_RX_LP_STAT1 ;
 int MDIO_AN_RX_LP_STAT1_1000BASET_FULL ;
 int MDIO_AN_RX_LP_STAT1_1000BASET_HALF ;
 int MDIO_MMD_AN ;
 int genphy_c45_read_status (struct phy_device*) ;
 int linkmode_mod_bit (int ,int ,int) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int aqr_read_status(struct phy_device *phydev)
{
 int val;

 if (phydev->autoneg == AUTONEG_ENABLE) {
  val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_RX_LP_STAT1);
  if (val < 0)
   return val;

  linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
     phydev->lp_advertising,
     val & MDIO_AN_RX_LP_STAT1_1000BASET_FULL);
  linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
     phydev->lp_advertising,
     val & MDIO_AN_RX_LP_STAT1_1000BASET_HALF);
 }

 return genphy_c45_read_status(phydev);
}
