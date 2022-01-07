
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;


 int dev_mc_sync_multiple (struct net_device*,struct net_device*) ;
 int dev_uc_sync_multiple (struct net_device*,struct net_device*) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void net_failover_set_rx_mode(struct net_device *dev)
{
 struct net_failover_info *nfo_info = netdev_priv(dev);
 struct net_device *slave_dev;

 rcu_read_lock();

 slave_dev = rcu_dereference(nfo_info->primary_dev);
 if (slave_dev) {
  dev_uc_sync_multiple(slave_dev, dev);
  dev_mc_sync_multiple(slave_dev, dev);
 }

 slave_dev = rcu_dereference(nfo_info->standby_dev);
 if (slave_dev) {
  dev_uc_sync_multiple(slave_dev, dev);
  dev_mc_sync_multiple(slave_dev, dev);
 }

 rcu_read_unlock();
}
