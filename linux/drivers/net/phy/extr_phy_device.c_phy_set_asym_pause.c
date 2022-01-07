
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ autoneg; int advertising; } ;


 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int linkmode_change_bit (int ,int ) ;
 int linkmode_clear_bit (int ,int ) ;
 int linkmode_copy (int ,int ) ;
 int linkmode_equal (int ,int ) ;
 int linkmode_set_bit (int ,int ) ;
 int oldadv ;
 int phy_start_aneg (struct phy_device*) ;

void phy_set_asym_pause(struct phy_device *phydev, bool rx, bool tx)
{
 __ETHTOOL_DECLARE_LINK_MODE_MASK(oldadv);

 linkmode_copy(oldadv, phydev->advertising);

 linkmode_clear_bit(ETHTOOL_LINK_MODE_Pause_BIT,
      phydev->advertising);
 linkmode_clear_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
      phydev->advertising);

 if (rx) {
  linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT,
     phydev->advertising);
  linkmode_set_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
     phydev->advertising);
 }

 if (tx)
  linkmode_change_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
        phydev->advertising);

 if (!linkmode_equal(oldadv, phydev->advertising) &&
     phydev->autoneg)
  phy_start_aneg(phydev);
}
