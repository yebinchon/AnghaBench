
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_lag_lower_state_info {int link_up; int tx_enabled; } ;
struct net_device {int dummy; } ;


 int netdev_lower_state_changed (struct net_device*,struct netdev_lag_lower_state_info*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static void net_failover_lower_state_changed(struct net_device *slave_dev,
          struct net_device *primary_dev,
          struct net_device *standby_dev)
{
 struct netdev_lag_lower_state_info info;

 if (netif_carrier_ok(slave_dev))
  info.link_up = 1;
 else
  info.link_up = 0;

 if (slave_dev == primary_dev) {
  if (netif_running(primary_dev))
   info.tx_enabled = 1;
  else
   info.tx_enabled = 0;
 } else {
  if ((primary_dev && netif_running(primary_dev)) ||
      (!netif_running(standby_dev)))
   info.tx_enabled = 0;
  else
   info.tx_enabled = 1;
 }

 netdev_lower_state_changed(slave_dev, &info);
}
