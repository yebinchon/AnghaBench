
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int dummy; } ;
struct net_device_context {int nvdev; int vf_netdev; } ;
struct net_device {int dummy; } ;


 int dev_mc_sync (struct net_device*,struct net_device*) ;
 int dev_uc_sync (struct net_device*,struct net_device*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rndis_filter_update (struct netvsc_device*) ;

__attribute__((used)) static void netvsc_set_rx_mode(struct net_device *net)
{
 struct net_device_context *ndev_ctx = netdev_priv(net);
 struct net_device *vf_netdev;
 struct netvsc_device *nvdev;

 rcu_read_lock();
 vf_netdev = rcu_dereference(ndev_ctx->vf_netdev);
 if (vf_netdev) {
  dev_uc_sync(vf_netdev, net);
  dev_mc_sync(vf_netdev, net);
 }

 nvdev = rcu_dereference(ndev_ctx->nvdev);
 if (nvdev)
  rndis_filter_update(nvdev);
 rcu_read_unlock();
}
