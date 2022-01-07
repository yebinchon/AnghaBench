
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int vf_netdev; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;

__attribute__((used)) static void netvsc_change_rx_flags(struct net_device *net, int change)
{
 struct net_device_context *ndev_ctx = netdev_priv(net);
 struct net_device *vf_netdev = rtnl_dereference(ndev_ctx->vf_netdev);
 int inc;

 if (!vf_netdev)
  return;

 if (change & IFF_PROMISC) {
  inc = (net->flags & IFF_PROMISC) ? 1 : -1;
  dev_set_promiscuity(vf_netdev, inc);
 }

 if (change & IFF_ALLMULTI) {
  inc = (net->flags & IFF_ALLMULTI) ? 1 : -1;
  dev_set_allmulti(vf_netdev, inc);
 }
}
