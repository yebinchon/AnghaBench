
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int advertising; int supported; } ;


 int ADVERTISE_100BASE4 ;
 int ADVERTISE_ALL ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int MDIO_AN_10GBT_CTRL ;
 int MDIO_AN_10GBT_CTRL_ADV10G ;
 int MDIO_AN_10GBT_CTRL_ADV2_5G ;
 int MDIO_AN_10GBT_CTRL_ADV5G ;
 int MDIO_AN_ADVERTISE ;
 int MDIO_MMD_AN ;
 int genphy_config_eee_advert (struct phy_device*) ;
 int linkmode_adv_to_mii_10gbt_adv_t (int ) ;
 int linkmode_adv_to_mii_adv_t (int ) ;
 int linkmode_and (int ,int ,int ) ;
 int phy_modify_mmd_changed (struct phy_device*,int ,int ,int,int ) ;

int genphy_c45_an_config_aneg(struct phy_device *phydev)
{
 int changed, ret;
 u32 adv;

 linkmode_and(phydev->advertising, phydev->advertising,
       phydev->supported);

 changed = genphy_config_eee_advert(phydev);

 adv = linkmode_adv_to_mii_adv_t(phydev->advertising);

 ret = phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MDIO_AN_ADVERTISE,
         ADVERTISE_ALL | ADVERTISE_100BASE4 |
         ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM,
         adv);
 if (ret < 0)
  return ret;
 if (ret > 0)
  changed = 1;

 adv = linkmode_adv_to_mii_10gbt_adv_t(phydev->advertising);

 ret = phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL,
         MDIO_AN_10GBT_CTRL_ADV10G |
         MDIO_AN_10GBT_CTRL_ADV5G |
         MDIO_AN_10GBT_CTRL_ADV2_5G, adv);
 if (ret < 0)
  return ret;
 if (ret > 0)
  changed = 1;

 return changed;
}
