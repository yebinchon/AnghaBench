
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct link_config {int supported; scalar_t__ autoneg; scalar_t__ advertising; int requested_duplex; scalar_t__ requested_speed; } ;
struct port_info {int mac; int phy; struct link_config link_config; } ;
struct net_device {size_t if_port; struct adapter* ml_priv; } ;
struct TYPE_4__ {scalar_t__ autoneg; scalar_t__ speed; int duplex; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;
struct adapter {struct port_info* port; } ;


 scalar_t__ ADVERTISED_Autoneg ;
 scalar_t__ ADVERTISED_MASK ;
 scalar_t__ AUTONEG_DISABLE ;
 int DUPLEX_INVALID ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_INVALID ;
 int SUPPORTED_Autoneg ;
 int ethtool_convert_link_mode_to_legacy_u32 (scalar_t__*,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int speed_duplex_to_caps (scalar_t__,int ) ;
 int t1_link_start (int ,int ,struct link_config*) ;

__attribute__((used)) static int set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct adapter *adapter = dev->ml_priv;
 struct port_info *p = &adapter->port[dev->if_port];
 struct link_config *lc = &p->link_config;
 u32 advertising;

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);

 if (!(lc->supported & SUPPORTED_Autoneg))
  return -EOPNOTSUPP;

 if (cmd->base.autoneg == AUTONEG_DISABLE) {
  u32 speed = cmd->base.speed;
  int cap = speed_duplex_to_caps(speed, cmd->base.duplex);

  if (!(lc->supported & cap) || (speed == SPEED_1000))
   return -EINVAL;
  lc->requested_speed = speed;
  lc->requested_duplex = cmd->base.duplex;
  lc->advertising = 0;
 } else {
  advertising &= ADVERTISED_MASK;
  if (advertising & (advertising - 1))
   advertising = lc->supported;
  advertising &= lc->supported;
  if (!advertising)
   return -EINVAL;
  lc->requested_speed = SPEED_INVALID;
  lc->requested_duplex = DUPLEX_INVALID;
  lc->advertising = advertising | ADVERTISED_Autoneg;
 }
 lc->autoneg = cmd->base.autoneg;
 if (netif_running(dev))
  t1_link_start(p->phy, p->mac, lc);
 return 0;
}
