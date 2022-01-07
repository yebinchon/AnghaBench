
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_11__ {scalar_t__ media_type; int autoneg_advertised; scalar_t__ mdix; scalar_t__ is_mdix; int addr; } ;
struct TYPE_9__ {int autoneg; scalar_t__ type; } ;
struct TYPE_8__ {int requested_mode; } ;
struct e1000_sfp_flags {scalar_t__ e100_base_fx; } ;
struct e1000_dev_spec_82575 {struct e1000_sfp_flags eth_flags; } ;
struct TYPE_7__ {struct e1000_dev_spec_82575 _82575; } ;
struct e1000_hw {scalar_t__ device_id; TYPE_5__ phy; TYPE_3__ mac; TYPE_2__ fc; TYPE_1__ dev_spec; } ;
struct igb_adapter {struct e1000_hw hw; } ;
struct TYPE_12__ {int advertising; int supported; } ;
struct TYPE_10__ {int speed; scalar_t__ eth_tp_mdix_ctrl; int eth_tp_mdix; int autoneg; int duplex; int port; int phy_address; } ;
struct ethtool_link_ksettings {TYPE_6__ link_modes; TYPE_4__ base; } ;


 int ADVERTISED_1000baseKX_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_2500baseX_Full ;
 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_Pause ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ AUTO_ALL_MODES ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 scalar_t__ E1000_DEV_ID_I354_BACKPLANE_2_5GBPS ;
 int E1000_STATUS ;
 int E1000_STATUS_2P5_SKU ;
 int E1000_STATUS_2P5_SKU_OVER ;
 int E1000_STATUS_FD ;
 int E1000_STATUS_LU ;
 int E1000_STATUS_SPEED_100 ;
 int E1000_STATUS_SPEED_1000 ;
 int ETH_TP_MDI ;
 scalar_t__ ETH_TP_MDI_AUTO ;
 int ETH_TP_MDI_INVALID ;
 int ETH_TP_MDI_X ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_2500 ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_1000baseKX_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_2500baseX_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_Pause ;
 int SUPPORTED_TP ;



 scalar_t__ e1000_i354 ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int rd32 (int ) ;

__attribute__((used)) static int igb_get_link_ksettings(struct net_device *netdev,
      struct ethtool_link_ksettings *cmd)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_dev_spec_82575 *dev_spec = &hw->dev_spec._82575;
 struct e1000_sfp_flags *eth_flags = &dev_spec->eth_flags;
 u32 status;
 u32 speed;
 u32 supported, advertising;

 status = rd32(E1000_STATUS);
 if (hw->phy.media_type == e1000_media_type_copper) {

  supported = (SUPPORTED_10baseT_Half |
        SUPPORTED_10baseT_Full |
        SUPPORTED_100baseT_Half |
        SUPPORTED_100baseT_Full |
        SUPPORTED_1000baseT_Full|
        SUPPORTED_Autoneg |
        SUPPORTED_TP |
        SUPPORTED_Pause);
  advertising = ADVERTISED_TP;

  if (hw->mac.autoneg == 1) {
   advertising |= ADVERTISED_Autoneg;

   advertising |= hw->phy.autoneg_advertised;
  }

  cmd->base.port = PORT_TP;
  cmd->base.phy_address = hw->phy.addr;
 } else {
  supported = (SUPPORTED_FIBRE |
        SUPPORTED_1000baseKX_Full |
        SUPPORTED_Autoneg |
        SUPPORTED_Pause);
  advertising = (ADVERTISED_FIBRE |
          ADVERTISED_1000baseKX_Full);
  if (hw->mac.type == e1000_i354) {
   if ((hw->device_id ==
        E1000_DEV_ID_I354_BACKPLANE_2_5GBPS) &&
       !(status & E1000_STATUS_2P5_SKU_OVER)) {
    supported |= SUPPORTED_2500baseX_Full;
    supported &= ~SUPPORTED_1000baseKX_Full;
    advertising |= ADVERTISED_2500baseX_Full;
    advertising &= ~ADVERTISED_1000baseKX_Full;
   }
  }
  if (eth_flags->e100_base_fx) {
   supported |= SUPPORTED_100baseT_Full;
   advertising |= ADVERTISED_100baseT_Full;
  }
  if (hw->mac.autoneg == 1)
   advertising |= ADVERTISED_Autoneg;

  cmd->base.port = PORT_FIBRE;
 }
 if (hw->mac.autoneg != 1)
  advertising &= ~(ADVERTISED_Pause |
     ADVERTISED_Asym_Pause);

 switch (hw->fc.requested_mode) {
 case 130:
  advertising |= ADVERTISED_Pause;
  break;
 case 129:
  advertising |= (ADVERTISED_Pause |
    ADVERTISED_Asym_Pause);
  break;
 case 128:
  advertising |= ADVERTISED_Asym_Pause;
  break;
 default:
  advertising &= ~(ADVERTISED_Pause |
     ADVERTISED_Asym_Pause);
 }
 if (status & E1000_STATUS_LU) {
  if ((status & E1000_STATUS_2P5_SKU) &&
      !(status & E1000_STATUS_2P5_SKU_OVER)) {
   speed = SPEED_2500;
  } else if (status & E1000_STATUS_SPEED_1000) {
   speed = SPEED_1000;
  } else if (status & E1000_STATUS_SPEED_100) {
   speed = SPEED_100;
  } else {
   speed = SPEED_10;
  }
  if ((status & E1000_STATUS_FD) ||
      hw->phy.media_type != e1000_media_type_copper)
   cmd->base.duplex = DUPLEX_FULL;
  else
   cmd->base.duplex = DUPLEX_HALF;
 } else {
  speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }
 cmd->base.speed = speed;
 if ((hw->phy.media_type == e1000_media_type_fiber) ||
     hw->mac.autoneg)
  cmd->base.autoneg = AUTONEG_ENABLE;
 else
  cmd->base.autoneg = AUTONEG_DISABLE;


 if (hw->phy.media_type == e1000_media_type_copper)
  cmd->base.eth_tp_mdix = hw->phy.is_mdix ? ETH_TP_MDI_X :
            ETH_TP_MDI;
 else
  cmd->base.eth_tp_mdix = ETH_TP_MDI_INVALID;

 if (hw->phy.mdix == AUTO_ALL_MODES)
  cmd->base.eth_tp_mdix_ctrl = ETH_TP_MDI_AUTO;
 else
  cmd->base.eth_tp_mdix_ctrl = hw->phy.mdix;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
