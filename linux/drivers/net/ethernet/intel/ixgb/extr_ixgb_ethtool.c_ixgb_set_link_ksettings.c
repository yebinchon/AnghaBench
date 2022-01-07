
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int netdev; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_10000 ;
 int ixgb_down (struct ixgb_adapter*,int) ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_set_speed_duplex (struct net_device*) ;
 int ixgb_up (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int
ixgb_set_link_ksettings(struct net_device *netdev,
   const struct ethtool_link_ksettings *cmd)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 u32 speed = cmd->base.speed;

 if (cmd->base.autoneg == AUTONEG_ENABLE ||
     (speed + cmd->base.duplex != SPEED_10000 + DUPLEX_FULL))
  return -EINVAL;

 if (netif_running(adapter->netdev)) {
  ixgb_down(adapter, 1);
  ixgb_reset(adapter);
  ixgb_up(adapter);
  ixgb_set_speed_duplex(netdev);
 } else
  ixgb_reset(adapter);

 return 0;
}
