
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_failover_info {int primary_stats; int primary_dev; int standby_stats; int standby_dev; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {int mtu; int name; int max_mtu; int min_mtu; TYPE_1__ dev; } ;


 int EBUSY ;
 int NETDEV_JOIN ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_close (struct net_device*) ;
 int dev_get_stats (struct net_device*,int *) ;
 int dev_hold (struct net_device*) ;
 int dev_mc_sync_multiple (struct net_device*,struct net_device*) ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_open (struct net_device*,int *) ;
 int dev_put (struct net_device*) ;
 int dev_set_mtu (struct net_device*,int) ;
 int dev_uc_sync_multiple (struct net_device*,struct net_device*) ;
 int dev_uc_unsync (struct net_device*,struct net_device*) ;
 int net_failover_compute_features (struct net_device*) ;
 int net_failover_lower_state_changed (struct net_device*,struct net_device*,struct net_device*) ;
 int netdev_err (struct net_device*,char*,int ,int) ;
 int netdev_info (struct net_device*,char*,char*,int ) ;
 struct net_failover_info* netdev_priv (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rcu_assign_pointer (int ,struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;
 int vlan_vids_add_by_dev (struct net_device*,struct net_device*) ;

__attribute__((used)) static int net_failover_slave_register(struct net_device *slave_dev,
           struct net_device *failover_dev)
{
 struct net_device *standby_dev, *primary_dev;
 struct net_failover_info *nfo_info;
 bool slave_is_standby;
 u32 orig_mtu;
 int err;


 orig_mtu = slave_dev->mtu;
 err = dev_set_mtu(slave_dev, failover_dev->mtu);
 if (err) {
  netdev_err(failover_dev, "unable to change mtu of %s to %u register failed\n",
      slave_dev->name, failover_dev->mtu);
  goto done;
 }

 dev_hold(slave_dev);

 if (netif_running(failover_dev)) {
  err = dev_open(slave_dev, ((void*)0));
  if (err && (err != -EBUSY)) {
   netdev_err(failover_dev, "Opening slave %s failed err:%d\n",
       slave_dev->name, err);
   goto err_dev_open;
  }
 }

 netif_addr_lock_bh(failover_dev);
 dev_uc_sync_multiple(slave_dev, failover_dev);
 dev_mc_sync_multiple(slave_dev, failover_dev);
 netif_addr_unlock_bh(failover_dev);

 err = vlan_vids_add_by_dev(slave_dev, failover_dev);
 if (err) {
  netdev_err(failover_dev, "Failed to add vlan ids to device %s err:%d\n",
      slave_dev->name, err);
  goto err_vlan_add;
 }

 nfo_info = netdev_priv(failover_dev);
 standby_dev = rtnl_dereference(nfo_info->standby_dev);
 primary_dev = rtnl_dereference(nfo_info->primary_dev);
 slave_is_standby = slave_dev->dev.parent == failover_dev->dev.parent;

 if (slave_is_standby) {
  rcu_assign_pointer(nfo_info->standby_dev, slave_dev);
  standby_dev = slave_dev;
  dev_get_stats(standby_dev, &nfo_info->standby_stats);
 } else {
  rcu_assign_pointer(nfo_info->primary_dev, slave_dev);
  primary_dev = slave_dev;
  dev_get_stats(primary_dev, &nfo_info->primary_stats);
  failover_dev->min_mtu = slave_dev->min_mtu;
  failover_dev->max_mtu = slave_dev->max_mtu;
 }

 net_failover_lower_state_changed(slave_dev, primary_dev, standby_dev);
 net_failover_compute_features(failover_dev);

 call_netdevice_notifiers(NETDEV_JOIN, slave_dev);

 netdev_info(failover_dev, "failover %s slave:%s registered\n",
      slave_is_standby ? "standby" : "primary", slave_dev->name);

 return 0;

err_vlan_add:
 dev_uc_unsync(slave_dev, failover_dev);
 dev_mc_unsync(slave_dev, failover_dev);
 dev_close(slave_dev);
err_dev_open:
 dev_put(slave_dev);
 dev_set_mtu(slave_dev, orig_mtu);
done:
 return err;
}
