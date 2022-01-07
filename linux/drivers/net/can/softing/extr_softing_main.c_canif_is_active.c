
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {scalar_t__ state; } ;


 scalar_t__ CAN_STATE_ERROR_PASSIVE ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static inline int canif_is_active(struct net_device *netdev)
{
 struct can_priv *can = netdev_priv(netdev);

 if (!netif_running(netdev))
  return 0;
 return (can->state <= CAN_STATE_ERROR_PASSIVE);
}
