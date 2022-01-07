
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int advertising; int supported; } ;
struct TYPE_5__ {scalar_t__ eth_tp_mdix_ctrl; int eth_tp_mdix; int autoneg; int duplex; int speed; int port; int phy_address; } ;
struct ethtool_link_ksettings {TYPE_3__ link_modes; TYPE_2__ base; } ;
struct e1000_hw {scalar_t__ media_type; int autoneg; int autoneg_advertised; scalar_t__ mdix; int phy_addr; } ;
struct TYPE_4__ {int mdix_mode; } ;
struct e1000_adapter {scalar_t__ link_duplex; TYPE_1__ phy_info; int link_speed; struct e1000_hw hw; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ AUTO_ALL_MODES ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int E1000_STATUS_LU ;
 int ETH_TP_MDI ;
 scalar_t__ ETH_TP_MDI_AUTO ;
 int ETH_TP_MDI_INVALID ;
 int ETH_TP_MDI_X ;
 scalar_t__ FULL_DUPLEX ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SPEED_UNKNOWN ;
 int STATUS ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int e1000_get_speed_and_duplex (struct e1000_hw*,int *,scalar_t__*) ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 int er32 (int ) ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int e1000_get_link_ksettings(struct net_device *netdev,
        struct ethtool_link_ksettings *cmd)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 supported, advertising;

 if (hw->media_type == e1000_media_type_copper) {
  supported = (SUPPORTED_10baseT_Half |
        SUPPORTED_10baseT_Full |
        SUPPORTED_100baseT_Half |
        SUPPORTED_100baseT_Full |
        SUPPORTED_1000baseT_Full|
        SUPPORTED_Autoneg |
        SUPPORTED_TP);
  advertising = ADVERTISED_TP;

  if (hw->autoneg == 1) {
   advertising |= ADVERTISED_Autoneg;

   advertising |= hw->autoneg_advertised;
  }

  cmd->base.port = PORT_TP;
  cmd->base.phy_address = hw->phy_addr;
 } else {
  supported = (SUPPORTED_1000baseT_Full |
          SUPPORTED_FIBRE |
          SUPPORTED_Autoneg);

  advertising = (ADVERTISED_1000baseT_Full |
          ADVERTISED_FIBRE |
          ADVERTISED_Autoneg);

  cmd->base.port = PORT_FIBRE;
 }

 if (er32(STATUS) & E1000_STATUS_LU) {
  e1000_get_speed_and_duplex(hw, &adapter->link_speed,
        &adapter->link_duplex);
  cmd->base.speed = adapter->link_speed;




  if (adapter->link_duplex == FULL_DUPLEX)
   cmd->base.duplex = DUPLEX_FULL;
  else
   cmd->base.duplex = DUPLEX_HALF;
 } else {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }

 cmd->base.autoneg = ((hw->media_type == e1000_media_type_fiber) ||
    hw->autoneg) ? AUTONEG_ENABLE : AUTONEG_DISABLE;


 if ((hw->media_type == e1000_media_type_copper) &&
     netif_carrier_ok(netdev))
  cmd->base.eth_tp_mdix = (!!adapter->phy_info.mdix_mode ?
         ETH_TP_MDI_X : ETH_TP_MDI);
 else
  cmd->base.eth_tp_mdix = ETH_TP_MDI_INVALID;

 if (hw->mdix == AUTO_ALL_MODES)
  cmd->base.eth_tp_mdix_ctrl = ETH_TP_MDI_AUTO;
 else
  cmd->base.eth_tp_mdix_ctrl = hw->mdix;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
