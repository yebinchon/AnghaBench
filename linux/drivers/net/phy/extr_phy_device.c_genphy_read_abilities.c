
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;


 int ARRAY_SIZE (int ) ;
 int BMSR_100FULL ;
 int BMSR_100HALF ;
 int BMSR_10FULL ;
 int BMSR_10HALF ;
 int BMSR_ANEGCAPABLE ;
 int BMSR_ESTATEN ;
 int ESTATUS_1000_TFULL ;
 int ESTATUS_1000_THALF ;
 int ESTATUS_1000_XFULL ;
 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_1000baseX_Full_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_Autoneg_BIT ;
 int MII_BMSR ;
 int MII_ESTATUS ;
 int linkmode_mod_bit (int ,int ,int) ;
 int linkmode_set_bit_array (int ,int ,int ) ;
 int phy_basic_ports_array ;
 int phy_read (struct phy_device*,int ) ;

int genphy_read_abilities(struct phy_device *phydev)
{
 int val;

 linkmode_set_bit_array(phy_basic_ports_array,
          ARRAY_SIZE(phy_basic_ports_array),
          phydev->supported);

 val = phy_read(phydev, MII_BMSR);
 if (val < 0)
  return val;

 linkmode_mod_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, phydev->supported,
    val & BMSR_ANEGCAPABLE);

 linkmode_mod_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT, phydev->supported,
    val & BMSR_100FULL);
 linkmode_mod_bit(ETHTOOL_LINK_MODE_100baseT_Half_BIT, phydev->supported,
    val & BMSR_100HALF);
 linkmode_mod_bit(ETHTOOL_LINK_MODE_10baseT_Full_BIT, phydev->supported,
    val & BMSR_10FULL);
 linkmode_mod_bit(ETHTOOL_LINK_MODE_10baseT_Half_BIT, phydev->supported,
    val & BMSR_10HALF);

 if (val & BMSR_ESTATEN) {
  val = phy_read(phydev, MII_ESTATUS);
  if (val < 0)
   return val;

  linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
     phydev->supported, val & ESTATUS_1000_TFULL);
  linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
     phydev->supported, val & ESTATUS_1000_THALF);
  linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
     phydev->supported, val & ESTATUS_1000_XFULL);
 }

 return 0;
}
