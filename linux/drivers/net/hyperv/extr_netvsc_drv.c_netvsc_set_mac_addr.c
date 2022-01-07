
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct netvsc_device {int dummy; } ;
struct net_device_context {int nvdev; int vf_netdev; } ;
struct net_device {int dev_addr; } ;


 int ENODEV ;
 int ETH_ALEN ;
 int dev_set_mac_address (struct net_device*,struct sockaddr*,int *) ;
 int eth_commit_mac_addr_change (struct net_device*,void*) ;
 int eth_prepare_mac_addr_change (struct net_device*,void*) ;
 int memcpy (int ,int ,int ) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int rndis_filter_set_device_mac (struct netvsc_device*,int ) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static int netvsc_set_mac_addr(struct net_device *ndev, void *p)
{
 struct net_device_context *ndc = netdev_priv(ndev);
 struct net_device *vf_netdev = rtnl_dereference(ndc->vf_netdev);
 struct netvsc_device *nvdev = rtnl_dereference(ndc->nvdev);
 struct sockaddr *addr = p;
 int err;

 err = eth_prepare_mac_addr_change(ndev, p);
 if (err)
  return err;

 if (!nvdev)
  return -ENODEV;

 if (vf_netdev) {
  err = dev_set_mac_address(vf_netdev, addr, ((void*)0));
  if (err)
   return err;
 }

 err = rndis_filter_set_device_mac(nvdev, addr->sa_data);
 if (!err) {
  eth_commit_mac_addr_change(ndev, p);
 } else if (vf_netdev) {

  memcpy(addr->sa_data, ndev->dev_addr, ETH_ALEN);
  dev_set_mac_address(vf_netdev, addr, ((void*)0));
 }

 return err;
}
