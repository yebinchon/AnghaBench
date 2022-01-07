
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_device {int link_state; } ;
struct netvsc_device_info {int dummy; } ;
struct netvsc_device {int num_chn; int max_chn; struct rndis_device* extension; } ;
struct net_device_context {struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;


 scalar_t__ IS_ERR (struct netvsc_device*) ;
 int PTR_ERR (struct netvsc_device*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct netvsc_device* rndis_filter_device_add (struct hv_device*,struct netvsc_device_info*) ;
 int rndis_filter_device_remove (struct hv_device*,struct netvsc_device*) ;
 int rndis_filter_open (struct netvsc_device*) ;
 int rndis_set_subchannel (struct net_device*,struct netvsc_device*,struct netvsc_device_info*) ;

__attribute__((used)) static int netvsc_attach(struct net_device *ndev,
    struct netvsc_device_info *dev_info)
{
 struct net_device_context *ndev_ctx = netdev_priv(ndev);
 struct hv_device *hdev = ndev_ctx->device_ctx;
 struct netvsc_device *nvdev;
 struct rndis_device *rdev;
 int ret;

 nvdev = rndis_filter_device_add(hdev, dev_info);
 if (IS_ERR(nvdev))
  return PTR_ERR(nvdev);

 if (nvdev->num_chn > 1) {
  ret = rndis_set_subchannel(ndev, nvdev, dev_info);


  if (ret) {
   nvdev->max_chn = 1;
   nvdev->num_chn = 1;
  }
 }


 netif_device_attach(ndev);


 netif_carrier_off(ndev);

 if (netif_running(ndev)) {
  ret = rndis_filter_open(nvdev);
  if (ret)
   goto err;

  rdev = nvdev->extension;
  if (!rdev->link_state)
   netif_carrier_on(ndev);
 }

 return 0;

err:
 netif_device_detach(ndev);

 rndis_filter_device_remove(hdev, nvdev);

 return ret;
}
