
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int pause; int asym_pause; int lp_advertising; } ;


 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 int LPA_PAUSE_ASYM ;
 int LPA_PAUSE_CAP ;
 int MDIO_AN_10GBT_STAT ;
 int MDIO_AN_LPA ;
 int MDIO_AN_STAT1_COMPLETE ;
 int MDIO_AN_STAT1_LPABLE ;
 int MDIO_MMD_AN ;
 int MDIO_STAT1 ;
 int linkmode_clear_bit (int ,int ) ;
 int linkmode_mod_bit (int ,int ,int) ;
 int mii_10gbt_stat_mod_linkmode_lpa_t (int ,int) ;
 int mii_adv_mod_linkmode_adv_t (int ,int) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

int genphy_c45_read_lpa(struct phy_device *phydev)
{
 int val;

 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_STAT1);
 if (val < 0)
  return val;

 if (!(val & MDIO_AN_STAT1_COMPLETE)) {
  linkmode_clear_bit(ETHTOOL_LINK_MODE_Autoneg_BIT,
       phydev->lp_advertising);
  mii_10gbt_stat_mod_linkmode_lpa_t(phydev->lp_advertising, 0);
  mii_adv_mod_linkmode_adv_t(phydev->lp_advertising, 0);
  phydev->pause = 0;
  phydev->asym_pause = 0;

  return 0;
 }

 linkmode_mod_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, phydev->lp_advertising,
    val & MDIO_AN_STAT1_LPABLE);


 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_LPA);
 if (val < 0)
  return val;

 mii_adv_mod_linkmode_adv_t(phydev->lp_advertising, val);
 phydev->pause = val & LPA_PAUSE_CAP ? 1 : 0;
 phydev->asym_pause = val & LPA_PAUSE_ASYM ? 1 : 0;


 val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_10GBT_STAT);
 if (val < 0)
  return val;

 mii_10gbt_stat_mod_linkmode_lpa_t(phydev->lp_advertising, val);

 return 0;
}
