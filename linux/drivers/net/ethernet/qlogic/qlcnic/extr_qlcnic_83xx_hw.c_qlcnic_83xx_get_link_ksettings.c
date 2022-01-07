
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_hardware_context {int link_speed; int port_config; int supported_type; int physical_port; int link_autoneg; int link_duplex; scalar_t__ has_link_events; int board_type; int module_type; } ;
struct qlcnic_adapter {int netdev; int state; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int speed; int port; int phy_address; int autoneg; int duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_UNKNOWN ;


 int PORT_OTHER ;

 int QLCNIC_BRDTYPE_83XX_10G ;
 int QLC_83XX_100_CAPABLE ;
 int QLC_83XX_10G_CAPABLE ;
 int QLC_83XX_10_CAPABLE ;
 int QLC_83XX_1G_CAPABLE ;
 int QLC_83XX_AUTONEG_ENABLE ;
 int QLC_83XX_SFP_MODULE_TYPE (int) ;




 int SPEED_UNKNOWN ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int __QLCNIC_MAINTENANCE_MODE ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;
 scalar_t__ netif_running (int ) ;
 int qlcnic_83xx_get_port_info (struct qlcnic_adapter*) ;
 int qlcnic_83xx_test_link (struct qlcnic_adapter*) ;
 int test_bit (int ,int *) ;

int qlcnic_83xx_get_link_ksettings(struct qlcnic_adapter *adapter,
       struct ethtool_link_ksettings *ecmd)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 config = 0;
 int status = 0;
 u32 supported, advertising;

 if (!test_bit(__QLCNIC_MAINTENANCE_MODE, &adapter->state)) {

  status = qlcnic_83xx_get_port_info(adapter);

  config = qlcnic_83xx_test_link(adapter);
  ahw->module_type = QLC_83XX_SFP_MODULE_TYPE(config);
 }


 ahw->board_type = QLCNIC_BRDTYPE_83XX_10G;

 if (netif_running(adapter->netdev) && ahw->has_link_events) {
  ecmd->base.speed = ahw->link_speed;
  ecmd->base.duplex = ahw->link_duplex;
  ecmd->base.autoneg = ahw->link_autoneg;
 } else {
  ecmd->base.speed = SPEED_UNKNOWN;
  ecmd->base.duplex = DUPLEX_UNKNOWN;
  ecmd->base.autoneg = AUTONEG_DISABLE;
 }

 supported = (SUPPORTED_10baseT_Full |
      SUPPORTED_100baseT_Full |
      SUPPORTED_1000baseT_Full |
      SUPPORTED_10000baseT_Full |
      SUPPORTED_Autoneg);

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      ecmd->link_modes.advertising);

 if (ecmd->base.autoneg == AUTONEG_ENABLE) {
  if (ahw->port_config & QLC_83XX_10_CAPABLE)
   advertising |= SUPPORTED_10baseT_Full;
  if (ahw->port_config & QLC_83XX_100_CAPABLE)
   advertising |= SUPPORTED_100baseT_Full;
  if (ahw->port_config & QLC_83XX_1G_CAPABLE)
   advertising |= SUPPORTED_1000baseT_Full;
  if (ahw->port_config & QLC_83XX_10G_CAPABLE)
   advertising |= SUPPORTED_10000baseT_Full;
  if (ahw->port_config & QLC_83XX_AUTONEG_ENABLE)
   advertising |= ADVERTISED_Autoneg;
 } else {
  switch (ahw->link_speed) {
  case 131:
   advertising = SUPPORTED_10baseT_Full;
   break;
  case 130:
   advertising = SUPPORTED_100baseT_Full;
   break;
  case 129:
   advertising = SUPPORTED_1000baseT_Full;
   break;
  case 128:
   advertising = SUPPORTED_10000baseT_Full;
   break;
  default:
   break;
  }

 }

 switch (ahw->supported_type) {
 case 133:
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  ecmd->base.port = 133;
  break;
 case 132:
  supported |= SUPPORTED_TP;
  advertising |= ADVERTISED_TP;
  ecmd->base.port = 132;
  break;
 case 134:
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  ecmd->base.port = 134;
  break;
 default:
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  ecmd->base.port = PORT_OTHER;
  break;
 }
 ecmd->base.phy_address = ahw->physical_port;

 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.advertising,
      advertising);

 return status;
}
