
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_failover_info {int failover_stats; int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int dev_get_stats (struct net_device*,int *) ;
 int net_failover_lower_state_changed (struct net_device*,struct net_device*,struct net_device*) ;
 scalar_t__ net_failover_xmit_ready (struct net_device*) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;

__attribute__((used)) static int net_failover_slave_link_change(struct net_device *slave_dev,
       struct net_device *failover_dev)
{
 struct net_device *primary_dev, *standby_dev;
 struct net_failover_info *nfo_info;

 nfo_info = netdev_priv(failover_dev);

 primary_dev = rtnl_dereference(nfo_info->primary_dev);
 standby_dev = rtnl_dereference(nfo_info->standby_dev);

 if (slave_dev != primary_dev && slave_dev != standby_dev)
  return -ENODEV;

 if ((primary_dev && net_failover_xmit_ready(primary_dev)) ||
     (standby_dev && net_failover_xmit_ready(standby_dev))) {
  netif_carrier_on(failover_dev);
  netif_tx_wake_all_queues(failover_dev);
 } else {
  dev_get_stats(failover_dev, &nfo_info->failover_stats);
  netif_carrier_off(failover_dev);
  netif_tx_stop_all_queues(failover_dev);
 }

 net_failover_lower_state_changed(slave_dev, primary_dev, standby_dev);

 return 0;
}
