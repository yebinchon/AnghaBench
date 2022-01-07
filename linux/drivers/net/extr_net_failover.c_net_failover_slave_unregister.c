
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_failover_info {int primary_dev; int standby_dev; int failover_stats; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {int name; int max_mtu; int min_mtu; TYPE_1__ dev; } ;


 int ENODEV ;
 int RCU_INIT_POINTER (int ,int *) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int dev_close (struct net_device*) ;
 int dev_get_stats (struct net_device*,int *) ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dev_uc_unsync (struct net_device*,struct net_device*) ;
 int net_failover_compute_features (struct net_device*) ;
 int netdev_info (struct net_device*,char*,char*,int ) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;
 int vlan_vids_del_by_dev (struct net_device*,struct net_device*) ;

__attribute__((used)) static int net_failover_slave_unregister(struct net_device *slave_dev,
      struct net_device *failover_dev)
{
 struct net_device *standby_dev, *primary_dev;
 struct net_failover_info *nfo_info;
 bool slave_is_standby;

 nfo_info = netdev_priv(failover_dev);
 primary_dev = rtnl_dereference(nfo_info->primary_dev);
 standby_dev = rtnl_dereference(nfo_info->standby_dev);

 if (WARN_ON_ONCE(slave_dev != primary_dev && slave_dev != standby_dev))
  return -ENODEV;

 vlan_vids_del_by_dev(slave_dev, failover_dev);
 dev_uc_unsync(slave_dev, failover_dev);
 dev_mc_unsync(slave_dev, failover_dev);
 dev_close(slave_dev);

 nfo_info = netdev_priv(failover_dev);
 dev_get_stats(failover_dev, &nfo_info->failover_stats);

 slave_is_standby = slave_dev->dev.parent == failover_dev->dev.parent;
 if (slave_is_standby) {
  RCU_INIT_POINTER(nfo_info->standby_dev, ((void*)0));
 } else {
  RCU_INIT_POINTER(nfo_info->primary_dev, ((void*)0));
  if (standby_dev) {
   failover_dev->min_mtu = standby_dev->min_mtu;
   failover_dev->max_mtu = standby_dev->max_mtu;
  }
 }

 dev_put(slave_dev);

 net_failover_compute_features(failover_dev);

 netdev_info(failover_dev, "failover %s slave:%s unregistered\n",
      slave_is_standby ? "standby" : "primary", slave_dev->name);

 return 0;
}
