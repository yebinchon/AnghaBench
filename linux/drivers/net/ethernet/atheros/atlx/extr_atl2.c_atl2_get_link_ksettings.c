
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {scalar_t__ speed; int autoneg; int duplex; scalar_t__ phy_address; int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;
struct atl2_hw {int autoneg_advertised; } ;
struct atl2_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; struct atl2_hw hw; } ;


 int ADVERTISED_Autoneg ;
 int ADVERTISED_TP ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 scalar_t__ FULL_DUPLEX ;
 int PORT_TP ;
 scalar_t__ SPEED_0 ;
 scalar_t__ SPEED_UNKNOWN ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl2_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *cmd)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);
 struct atl2_hw *hw = &adapter->hw;
 u32 supported, advertising;

 supported = (SUPPORTED_10baseT_Half |
  SUPPORTED_10baseT_Full |
  SUPPORTED_100baseT_Half |
  SUPPORTED_100baseT_Full |
  SUPPORTED_Autoneg |
  SUPPORTED_TP);
 advertising = ADVERTISED_TP;

 advertising |= ADVERTISED_Autoneg;
 advertising |= hw->autoneg_advertised;

 cmd->base.port = PORT_TP;
 cmd->base.phy_address = 0;

 if (adapter->link_speed != SPEED_0) {
  cmd->base.speed = adapter->link_speed;
  if (adapter->link_duplex == FULL_DUPLEX)
   cmd->base.duplex = DUPLEX_FULL;
  else
   cmd->base.duplex = DUPLEX_HALF;
 } else {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }

 cmd->base.autoneg = AUTONEG_ENABLE;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
