
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int subchan_work; } ;
struct net_device_context {int vf_stats; int list; int vf_netdev; int nvdev; int dwork; } ;
struct net_device {int dummy; } ;
struct hv_device {int device; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dev_err (int *,char*) ;
 int free_netdev (struct net_device*) ;
 int free_percpu (int ) ;
 struct net_device* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,int *) ;
 int list_del (int *) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_unregister_vf (struct net_device*) ;
 int rndis_filter_device_remove (struct hv_device*,struct netvsc_device*) ;
 void* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int netvsc_remove(struct hv_device *dev)
{
 struct net_device_context *ndev_ctx;
 struct net_device *vf_netdev, *net;
 struct netvsc_device *nvdev;

 net = hv_get_drvdata(dev);
 if (net == ((void*)0)) {
  dev_err(&dev->device, "No net device to remove\n");
  return 0;
 }

 ndev_ctx = netdev_priv(net);

 cancel_delayed_work_sync(&ndev_ctx->dwork);

 rtnl_lock();
 nvdev = rtnl_dereference(ndev_ctx->nvdev);
 if (nvdev)
  cancel_work_sync(&nvdev->subchan_work);





 vf_netdev = rtnl_dereference(ndev_ctx->vf_netdev);
 if (vf_netdev)
  netvsc_unregister_vf(vf_netdev);

 if (nvdev)
  rndis_filter_device_remove(dev, nvdev);

 unregister_netdevice(net);
 list_del(&ndev_ctx->list);

 rtnl_unlock();

 hv_set_drvdata(dev, ((void*)0));

 free_percpu(ndev_ctx->vf_stats);
 free_netdev(net);
 return 0;
}
