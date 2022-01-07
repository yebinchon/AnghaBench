
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
struct atl1c_hw {int link_cap_flags; int autoneg_advertised; } ;
struct atl1c_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; struct atl1c_hw hw; } ;


 int ADVERTISED_TP ;
 int ATL1C_LINK_CAP_1000M ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 scalar_t__ FULL_DUPLEX ;
 int PORT_TP ;
 scalar_t__ SPEED_0 ;
 scalar_t__ SPEED_UNKNOWN ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl1c_get_link_ksettings(struct net_device *netdev,
        struct ethtool_link_ksettings *cmd)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct atl1c_hw *hw = &adapter->hw;
 u32 supported, advertising;

 supported = (SUPPORTED_10baseT_Half |
      SUPPORTED_10baseT_Full |
      SUPPORTED_100baseT_Half |
      SUPPORTED_100baseT_Full |
      SUPPORTED_Autoneg |
      SUPPORTED_TP);
 if (hw->link_cap_flags & ATL1C_LINK_CAP_1000M)
  supported |= SUPPORTED_1000baseT_Full;

 advertising = ADVERTISED_TP;

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
