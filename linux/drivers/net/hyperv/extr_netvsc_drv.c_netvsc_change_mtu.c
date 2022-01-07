
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device_info {int dummy; } ;
struct netvsc_device {scalar_t__ destroy; } ;
struct net_device_context {int nvdev; int vf_netdev; } ;
struct net_device {int mtu; } ;


 int ENODEV ;
 int ENOMEM ;
 int dev_set_mtu (struct net_device*,int) ;
 int kfree (struct netvsc_device_info*) ;
 int netdev_err (struct net_device*,char*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netvsc_attach (struct net_device*,struct netvsc_device_info*) ;
 int netvsc_detach (struct net_device*,struct netvsc_device*) ;
 struct netvsc_device_info* netvsc_devinfo_get (struct netvsc_device*) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static int netvsc_change_mtu(struct net_device *ndev, int mtu)
{
 struct net_device_context *ndevctx = netdev_priv(ndev);
 struct net_device *vf_netdev = rtnl_dereference(ndevctx->vf_netdev);
 struct netvsc_device *nvdev = rtnl_dereference(ndevctx->nvdev);
 int orig_mtu = ndev->mtu;
 struct netvsc_device_info *device_info;
 int ret = 0;

 if (!nvdev || nvdev->destroy)
  return -ENODEV;

 device_info = netvsc_devinfo_get(nvdev);

 if (!device_info)
  return -ENOMEM;


 if (vf_netdev) {
  ret = dev_set_mtu(vf_netdev, mtu);
  if (ret)
   goto out;
 }

 ret = netvsc_detach(ndev, nvdev);
 if (ret)
  goto rollback_vf;

 ndev->mtu = mtu;

 ret = netvsc_attach(ndev, device_info);
 if (!ret)
  goto out;


 ndev->mtu = orig_mtu;

 if (netvsc_attach(ndev, device_info))
  netdev_err(ndev, "restoring mtu failed\n");
rollback_vf:
 if (vf_netdev)
  dev_set_mtu(vf_netdev, orig_mtu);

out:
 kfree(device_info);
 return ret;
}
