
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ETHTOOL_LINK_MODE_2500baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_5000baseT_Full_BIT ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_NG_EXTABLE ;
 int MDIO_PMA_NG_EXTABLE_2_5GBT ;
 int MDIO_PMA_NG_EXTABLE_5GBT ;
 int genphy_c45_pma_read_abilities (struct phy_device*) ;
 int linkmode_mod_bit (int ,int ,int) ;
 scalar_t__ mv3310_has_pma_ngbaset_quirk (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int mv3310_get_features(struct phy_device *phydev)
{
 int ret, val;

 ret = genphy_c45_pma_read_abilities(phydev);
 if (ret)
  return ret;

 if (mv3310_has_pma_ngbaset_quirk(phydev)) {
  val = phy_read_mmd(phydev, MDIO_MMD_PMAPMD,
       MDIO_PMA_NG_EXTABLE);
  if (val < 0)
   return val;

  linkmode_mod_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
     phydev->supported,
     val & MDIO_PMA_NG_EXTABLE_2_5GBT);

  linkmode_mod_bit(ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
     phydev->supported,
     val & MDIO_PMA_NG_EXTABLE_5GBT);
 }

 return 0;
}
