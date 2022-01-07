
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int supported; int advertising; int autoneg; int duplex; int speed; } ;
struct port_info {TYPE_4__ link_config; TYPE_2__* phy; } ;
struct net_device {size_t if_port; struct adapter* ml_priv; } ;
struct TYPE_10__ {int advertising; int supported; } ;
struct TYPE_8__ {int autoneg; int phy_address; int port; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_5__ link_modes; TYPE_3__ base; } ;
struct adapter {struct port_info* port; } ;
struct TYPE_6__ {int prtad; } ;
struct TYPE_7__ {TYPE_1__ mdio; } ;


 int DUPLEX_UNKNOWN ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 struct adapter *adapter = dev->ml_priv;
 struct port_info *p = &adapter->port[dev->if_port];
 u32 supported, advertising;

 supported = p->link_config.supported;
 advertising = p->link_config.advertising;

 if (netif_carrier_ok(dev)) {
  cmd->base.speed = p->link_config.speed;
  cmd->base.duplex = p->link_config.duplex;
 } else {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }

 cmd->base.port = (supported & SUPPORTED_TP) ? PORT_TP : PORT_FIBRE;
 cmd->base.phy_address = p->phy->mdio.prtad;
 cmd->base.autoneg = p->link_config.autoneg;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
