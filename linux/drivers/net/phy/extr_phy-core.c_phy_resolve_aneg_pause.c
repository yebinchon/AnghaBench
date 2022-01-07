
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ duplex; int lp_advertising; void* asym_pause; void* pause; } ;


 scalar_t__ DUPLEX_FULL ;
 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 void* linkmode_test_bit (int ,int ) ;

void phy_resolve_aneg_pause(struct phy_device *phydev)
{
 if (phydev->duplex == DUPLEX_FULL) {
  phydev->pause = linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT,
        phydev->lp_advertising);
  phydev->asym_pause = linkmode_test_bit(
   ETHTOOL_LINK_MODE_Asym_Pause_BIT,
   phydev->lp_advertising);
 }
}
