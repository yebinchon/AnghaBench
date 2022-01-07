
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;
struct failover {int failover_dev; } ;


 int failover_slave_unregister (struct net_device*) ;
 int failover_unregister (struct failover*) ;
 int free_netdev (struct net_device*) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 struct net_device* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (struct net_device*) ;

void net_failover_destroy(struct failover *failover)
{
 struct net_failover_info *nfo_info;
 struct net_device *failover_dev;
 struct net_device *slave_dev;

 if (!failover)
  return;

 failover_dev = rcu_dereference(failover->failover_dev);
 nfo_info = netdev_priv(failover_dev);

 netif_device_detach(failover_dev);

 rtnl_lock();

 slave_dev = rtnl_dereference(nfo_info->primary_dev);
 if (slave_dev)
  failover_slave_unregister(slave_dev);

 slave_dev = rtnl_dereference(nfo_info->standby_dev);
 if (slave_dev)
  failover_slave_unregister(slave_dev);

 failover_unregister(failover);

 unregister_netdevice(failover_dev);

 rtnl_unlock();

 free_netdev(failover_dev);
}
