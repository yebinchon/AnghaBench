
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
struct TYPE_10__ {int requested_mode; } ;
struct TYPE_9__ {int autoneg_advertised; int type; int sfp_type; scalar_t__ multispeed_fiber; int media_type; } ;
struct TYPE_7__ {int (* get_link_capabilities ) (struct ixgbe_hw*,int*,int*) ;} ;
struct TYPE_8__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ fc; TYPE_3__ phy; TYPE_2__ mac; } ;
struct ixgbe_adapter {int link_speed; struct ixgbe_hw hw; } ;
struct TYPE_12__ {int advertising; int supported; } ;
struct TYPE_11__ {int duplex; int speed; void* port; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_6__ link_modes; TYPE_5__ base; } ;
typedef int ixgbe_link_speed ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseKX_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_Pause ;
 int ADVERTISED_TP ;
 int ADVRTSD_MSK_10G ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_UNKNOWN ;






 void* PORT_DA ;
 void* PORT_FIBRE ;
 void* PORT_NONE ;
 void* PORT_OTHER ;
 void* PORT_TP ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;
 int SPEED_5000 ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_1000baseKX_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_Pause ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;



 int ixgbe_get_supported_10gtypes (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_isbackplane (int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int*,int*) ;

__attribute__((used)) static int ixgbe_get_link_ksettings(struct net_device *netdev,
        struct ethtool_link_ksettings *cmd)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 ixgbe_link_speed supported_link;
 bool autoneg = 0;
 u32 supported, advertising;

 ethtool_convert_link_mode_to_legacy_u32(&supported,
      cmd->link_modes.supported);

 hw->mac.ops.get_link_capabilities(hw, &supported_link, &autoneg);


 if (supported_link & 171)
  supported |= ixgbe_get_supported_10gtypes(hw);
 if (supported_link & 169)
  supported |= (ixgbe_isbackplane(hw->phy.media_type)) ?
       SUPPORTED_1000baseKX_Full :
       SUPPORTED_1000baseT_Full;
 if (supported_link & 172)
  supported |= SUPPORTED_100baseT_Full;
 if (supported_link & 170)
  supported |= SUPPORTED_10baseT_Full;


 advertising = supported;

 if (hw->phy.autoneg_advertised) {
  advertising = 0;
  if (hw->phy.autoneg_advertised & 170)
   advertising |= ADVERTISED_10baseT_Full;
  if (hw->phy.autoneg_advertised & 172)
   advertising |= ADVERTISED_100baseT_Full;
  if (hw->phy.autoneg_advertised & 171)
   advertising |= supported & ADVRTSD_MSK_10G;
  if (hw->phy.autoneg_advertised & 169) {
   if (supported & SUPPORTED_1000baseKX_Full)
    advertising |= ADVERTISED_1000baseKX_Full;
   else
    advertising |= ADVERTISED_1000baseT_Full;
  }
 } else {
  if (hw->phy.multispeed_fiber && !autoneg) {
   if (supported_link & 171)
    advertising = ADVERTISED_10000baseT_Full;
  }
 }

 if (autoneg) {
  supported |= SUPPORTED_Autoneg;
  advertising |= ADVERTISED_Autoneg;
  cmd->base.autoneg = AUTONEG_ENABLE;
 } else
  cmd->base.autoneg = AUTONEG_DISABLE;


 switch (adapter->hw.phy.type) {
 case 146:
 case 163:
 case 144:
 case 161:
 case 162:
  supported |= SUPPORTED_TP;
  advertising |= ADVERTISED_TP;
  cmd->base.port = PORT_TP;
  break;
 case 154:
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  cmd->base.port = PORT_FIBRE;
  break;
 case 159:
 case 150:
 case 149:
 case 152:
 case 153:
 case 151:
 case 148:
 case 156:
 case 158:
 case 157:
 case 155:

  switch (adapter->hw.phy.sfp_type) {
  case 136:
  case 135:
  case 134:
   supported |= SUPPORTED_FIBRE;
   advertising |= ADVERTISED_FIBRE;
   cmd->base.port = PORT_DA;
   break;
  case 131:
  case 133:
  case 130:
  case 129:
  case 138:
  case 137:
  case 140:
  case 139:
   supported |= SUPPORTED_FIBRE;
   advertising |= ADVERTISED_FIBRE;
   cmd->base.port = PORT_FIBRE;
   break;
  case 132:
   supported |= SUPPORTED_FIBRE;
   advertising |= ADVERTISED_FIBRE;
   cmd->base.port = PORT_NONE;
   break;
  case 142:
  case 141:
   supported |= SUPPORTED_TP;
   advertising |= ADVERTISED_TP;
   cmd->base.port = PORT_TP;
   break;
  case 128:
  default:
   supported |= SUPPORTED_FIBRE;
   advertising |= ADVERTISED_FIBRE;
   cmd->base.port = PORT_OTHER;
   break;
  }
  break;
 case 143:
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  cmd->base.port = PORT_NONE;
  break;
 case 145:
 case 160:
 case 147:
 default:
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  cmd->base.port = PORT_OTHER;
  break;
 }


 supported |= SUPPORTED_Pause;

 switch (hw->fc.requested_mode) {
 case 166:
  advertising |= ADVERTISED_Pause;
  break;
 case 165:
  advertising |= ADVERTISED_Pause |
         ADVERTISED_Asym_Pause;
  break;
 case 164:
  advertising |= ADVERTISED_Asym_Pause;
  break;
 default:
  advertising &= ~(ADVERTISED_Pause |
           ADVERTISED_Asym_Pause);
 }

 if (netif_carrier_ok(netdev)) {
  switch (adapter->link_speed) {
  case 171:
   cmd->base.speed = SPEED_10000;
   break;
  case 167:
   cmd->base.speed = SPEED_5000;
   break;
  case 168:
   cmd->base.speed = SPEED_2500;
   break;
  case 169:
   cmd->base.speed = SPEED_1000;
   break;
  case 172:
   cmd->base.speed = SPEED_100;
   break;
  case 170:
   cmd->base.speed = SPEED_10;
   break;
  default:
   break;
  }
  cmd->base.duplex = DUPLEX_FULL;
 } else {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
