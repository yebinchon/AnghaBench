
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; int advertising; } ;


 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int linkmode_clear_bit (int ,int ) ;
 int linkmode_copy (int ,int ) ;
 int linkmode_set_bit (int ,int ) ;

void phy_set_sym_pause(struct phy_device *phydev, bool rx, bool tx,
         bool autoneg)
{
 linkmode_clear_bit(ETHTOOL_LINK_MODE_Pause_BIT, phydev->supported);

 if (rx && tx && autoneg)
  linkmode_set_bit(ETHTOOL_LINK_MODE_Pause_BIT,
     phydev->supported);

 linkmode_copy(phydev->advertising, phydev->supported);
}
