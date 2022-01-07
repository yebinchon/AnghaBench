
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_failover_info {int standby_dev; int primary_dev; } ;
struct net_device {int dummy; } ;


 int dev_close (struct net_device*) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;

__attribute__((used)) static int net_failover_close(struct net_device *dev)
{
 struct net_failover_info *nfo_info = netdev_priv(dev);
 struct net_device *slave_dev;

 netif_tx_disable(dev);

 slave_dev = rtnl_dereference(nfo_info->primary_dev);
 if (slave_dev)
  dev_close(slave_dev);

 slave_dev = rtnl_dereference(nfo_info->standby_dev);
 if (slave_dev)
  dev_close(slave_dev);

 return 0;
}
