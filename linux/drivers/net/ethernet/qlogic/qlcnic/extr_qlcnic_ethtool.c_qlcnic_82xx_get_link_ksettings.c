
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct qlcnic_hardware_context {scalar_t__ port_type; int board_type; int module_type; scalar_t__ has_link_events; void* link_autoneg; int physical_port; int link_duplex; scalar_t__ link_speed; scalar_t__ linkup; int pci_func; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; TYPE_1__* pdev; int netdev; } ;
struct TYPE_6__ {int advertising; int supported; } ;
struct TYPE_5__ {void* port; void* autoneg; int phy_address; int duplex; scalar_t__ speed; } ;
struct ethtool_link_ksettings {TYPE_3__ link_modes; TYPE_2__ base; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ ADVERTISED_10000baseT_Full ;
 scalar_t__ ADVERTISED_1000baseT_Full ;
 scalar_t__ ADVERTISED_1000baseT_Half ;
 scalar_t__ ADVERTISED_100baseT_Full ;
 scalar_t__ ADVERTISED_100baseT_Half ;
 scalar_t__ ADVERTISED_Autoneg ;
 scalar_t__ ADVERTISED_FIBRE ;
 scalar_t__ ADVERTISED_MII ;
 scalar_t__ ADVERTISED_TP ;
 void* AUTONEG_DISABLE ;
 void* AUTONEG_ENABLE ;
 int DUPLEX_UNKNOWN ;
 int EIO ;







 scalar_t__ P3P_LINK_SPEED_MHZ ;
 int P3P_LINK_SPEED_REG (int ) ;
 scalar_t__ P3P_LINK_SPEED_VAL (int ,scalar_t__) ;
 void* PORT_FIBRE ;
 void* PORT_MII ;
 void* PORT_OTHER ;
 void* PORT_TP ;
 scalar_t__ QLCNIC_GBE ;
 scalar_t__ QLCNIC_PORT_MODE_802_3_AP ;
 int QLCNIC_PORT_MODE_ADDR ;
 scalar_t__ QLCNIC_XGBE ;
 scalar_t__ QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 scalar_t__ SPEED_UNKNOWN ;
 scalar_t__ SUPPORTED_10000baseT_Full ;
 scalar_t__ SUPPORTED_1000baseT_Full ;
 scalar_t__ SUPPORTED_1000baseT_Half ;
 scalar_t__ SUPPORTED_100baseT_Full ;
 scalar_t__ SUPPORTED_100baseT_Half ;
 scalar_t__ SUPPORTED_10baseT_Full ;
 scalar_t__ SUPPORTED_10baseT_Half ;
 scalar_t__ SUPPORTED_Autoneg ;
 scalar_t__ SUPPORTED_FIBRE ;
 scalar_t__ SUPPORTED_MII ;
 scalar_t__ SUPPORTED_TP ;
 int dev_err (int *,char*,int) ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,scalar_t__) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int qlcnic_82xx_get_link_ksettings(struct qlcnic_adapter *adapter,
       struct ethtool_link_ksettings *ecmd)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 speed, reg;
 int check_sfp_module = 0, err = 0;
 u16 pcifn = ahw->pci_func;
 u32 supported, advertising;


 if (adapter->ahw->port_type == QLCNIC_GBE) {
  supported = (SUPPORTED_10baseT_Half |
       SUPPORTED_10baseT_Full |
       SUPPORTED_100baseT_Half |
       SUPPORTED_100baseT_Full |
       SUPPORTED_1000baseT_Half |
       SUPPORTED_1000baseT_Full);

  advertising = (ADVERTISED_100baseT_Half |
         ADVERTISED_100baseT_Full |
         ADVERTISED_1000baseT_Half |
         ADVERTISED_1000baseT_Full);

  ecmd->base.speed = adapter->ahw->link_speed;
  ecmd->base.duplex = adapter->ahw->link_duplex;
  ecmd->base.autoneg = adapter->ahw->link_autoneg;

 } else if (adapter->ahw->port_type == QLCNIC_XGBE) {
  u32 val = 0;
  val = QLCRD32(adapter, QLCNIC_PORT_MODE_ADDR, &err);

  if (val == QLCNIC_PORT_MODE_802_3_AP) {
   supported = SUPPORTED_1000baseT_Full;
   advertising = ADVERTISED_1000baseT_Full;
  } else {
   supported = SUPPORTED_10000baseT_Full;
   advertising = ADVERTISED_10000baseT_Full;
  }

  if (netif_running(adapter->netdev) && ahw->has_link_events) {
   if (ahw->linkup) {
    reg = QLCRD32(adapter,
           P3P_LINK_SPEED_REG(pcifn), &err);
    speed = P3P_LINK_SPEED_VAL(pcifn, reg);
    ahw->link_speed = speed * P3P_LINK_SPEED_MHZ;
   }

   ecmd->base.speed = ahw->link_speed;
   ecmd->base.autoneg = ahw->link_autoneg;
   ecmd->base.duplex = ahw->link_duplex;
   goto skip;
  }

  ecmd->base.speed = SPEED_UNKNOWN;
  ecmd->base.duplex = DUPLEX_UNKNOWN;
  ecmd->base.autoneg = AUTONEG_DISABLE;
 } else
  return -EIO;

skip:
 ecmd->base.phy_address = adapter->ahw->physical_port;

 switch (adapter->ahw->board_type) {
 case 129:
 case 133:
 case 132:
  supported |= SUPPORTED_Autoneg;
  advertising |= ADVERTISED_Autoneg;

 case 140:
 case 139:
 case 141:
  supported |= SUPPORTED_TP;
  advertising |= ADVERTISED_TP;
  ecmd->base.port = PORT_TP;
  ecmd->base.autoneg = adapter->ahw->link_autoneg;
  break;
 case 130:
 case 128:
 case 131:
  supported |= SUPPORTED_MII;
  advertising |= ADVERTISED_MII;
  ecmd->base.port = PORT_MII;
  ecmd->base.autoneg = AUTONEG_DISABLE;
  break;
 case 137:
 case 138:
 case 136:
  advertising |= ADVERTISED_TP;
  supported |= SUPPORTED_TP;
  check_sfp_module = netif_running(adapter->netdev) &&
       ahw->has_link_events;

 case 134:
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  ecmd->base.port = PORT_FIBRE;
  ecmd->base.autoneg = AUTONEG_DISABLE;
  break;
 case 135:
  if (adapter->ahw->port_type == QLCNIC_XGBE) {
   ecmd->base.autoneg = AUTONEG_DISABLE;
   supported |= (SUPPORTED_FIBRE | SUPPORTED_TP);
   advertising |=
    (ADVERTISED_FIBRE | ADVERTISED_TP);
   ecmd->base.port = PORT_FIBRE;
   check_sfp_module = netif_running(adapter->netdev) &&
        ahw->has_link_events;
  } else {
   ecmd->base.autoneg = AUTONEG_ENABLE;
   supported |= (SUPPORTED_TP | SUPPORTED_Autoneg);
   advertising |=
    (ADVERTISED_TP | ADVERTISED_Autoneg);
   ecmd->base.port = PORT_TP;
  }
  break;
 default:
  dev_err(&adapter->pdev->dev, "Unsupported board model %d\n",
   adapter->ahw->board_type);
  return -EIO;
 }

 if (check_sfp_module) {
  switch (adapter->ahw->module_type) {
  case 145:
  case 146:
  case 148:
  case 147:
   ecmd->base.port = PORT_FIBRE;
   break;
  case 143:
  case 142:
  case 144:
   ecmd->base.port = PORT_TP;
   break;
  default:
   ecmd->base.port = PORT_OTHER;
  }
 }

 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.advertising,
      advertising);

 return 0;
}
