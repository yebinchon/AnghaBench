
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_device {int link_state; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct net_device_context {int nvdev; int vf_netdev; } ;
struct net_device {int name; } ;


 int dev_open (struct net_device*,int *) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int ,int) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netvsc_tx_enable (struct netvsc_device*,struct net_device*) ;
 int rndis_filter_open (struct netvsc_device*) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static int netvsc_open(struct net_device *net)
{
 struct net_device_context *ndev_ctx = netdev_priv(net);
 struct net_device *vf_netdev = rtnl_dereference(ndev_ctx->vf_netdev);
 struct netvsc_device *nvdev = rtnl_dereference(ndev_ctx->nvdev);
 struct rndis_device *rdev;
 int ret = 0;

 netif_carrier_off(net);


 ret = rndis_filter_open(nvdev);
 if (ret != 0) {
  netdev_err(net, "unable to open device (ret %d).\n", ret);
  return ret;
 }

 rdev = nvdev->extension;
 if (!rdev->link_state) {
  netif_carrier_on(net);
  netvsc_tx_enable(nvdev, net);
 }

 if (vf_netdev) {




  ret = dev_open(vf_netdev, ((void*)0));
  if (ret)
   netdev_warn(net,
        "unable to open slave: %s: %d\n",
        vf_netdev->name, ret);
 }
 return 0;
}
