
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int vf_netdev; int vf_takeover; } ;
struct net_device {int name; } ;


 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int RCU_INIT_POINTER (int ,int *) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_put (struct net_device*) ;
 struct net_device* get_netvsc_byref (struct net_device*) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;

__attribute__((used)) static int netvsc_unregister_vf(struct net_device *vf_netdev)
{
 struct net_device *ndev;
 struct net_device_context *net_device_ctx;

 ndev = get_netvsc_byref(vf_netdev);
 if (!ndev)
  return NOTIFY_DONE;

 net_device_ctx = netdev_priv(ndev);
 cancel_delayed_work_sync(&net_device_ctx->vf_takeover);

 netdev_info(ndev, "VF unregistering: %s\n", vf_netdev->name);

 netdev_rx_handler_unregister(vf_netdev);
 netdev_upper_dev_unlink(vf_netdev, ndev);
 RCU_INIT_POINTER(net_device_ctx->vf_netdev, ((void*)0));
 dev_put(vf_netdev);

 return NOTIFY_OK;
}
