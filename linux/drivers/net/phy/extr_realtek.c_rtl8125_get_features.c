
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ETHTOOL_LINK_MODE_10000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_2500baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_5000baseT_Full_BIT ;
 int RTL_SUPPORTS_10000FULL ;
 int RTL_SUPPORTS_2500FULL ;
 int RTL_SUPPORTS_5000FULL ;
 int genphy_read_abilities (struct phy_device*) ;
 int linkmode_mod_bit (int ,int ,int) ;
 int phy_read_paged (struct phy_device*,int,int) ;

__attribute__((used)) static int rtl8125_get_features(struct phy_device *phydev)
{
 int val;

 val = phy_read_paged(phydev, 0xa61, 0x13);
 if (val < 0)
  return val;

 linkmode_mod_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
    phydev->supported, val & RTL_SUPPORTS_2500FULL);
 linkmode_mod_bit(ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
    phydev->supported, val & RTL_SUPPORTS_5000FULL);
 linkmode_mod_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
    phydev->supported, val & RTL_SUPPORTS_10000FULL);

 return genphy_read_abilities(phydev);
}
