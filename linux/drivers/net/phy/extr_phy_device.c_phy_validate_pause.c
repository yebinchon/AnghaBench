
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int supported; } ;
struct ethtool_pauseparam {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;


 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int linkmode_test_bit (int ,int ) ;

bool phy_validate_pause(struct phy_device *phydev,
   struct ethtool_pauseparam *pp)
{
 if (!linkmode_test_bit(ETHTOOL_LINK_MODE_Pause_BIT,
          phydev->supported) && pp->rx_pause)
  return 0;

 if (!linkmode_test_bit(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
          phydev->supported) &&
     pp->rx_pause != pp->tx_pause)
  return 0;

 return 1;
}
