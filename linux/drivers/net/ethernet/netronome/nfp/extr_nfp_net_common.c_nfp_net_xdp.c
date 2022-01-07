
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int app; int xdp_hw; int xdp; } ;
struct netdev_bpf {int command; } ;
struct net_device {int dummy; } ;






 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_app_bpf (int ,struct nfp_net*,struct netdev_bpf*) ;
 int nfp_net_xdp_setup_drv (struct nfp_net*,struct netdev_bpf*) ;
 int nfp_net_xdp_setup_hw (struct nfp_net*,struct netdev_bpf*) ;
 int xdp_attachment_query (int *,struct netdev_bpf*) ;

__attribute__((used)) static int nfp_net_xdp(struct net_device *netdev, struct netdev_bpf *xdp)
{
 struct nfp_net *nn = netdev_priv(netdev);

 switch (xdp->command) {
 case 129:
  return nfp_net_xdp_setup_drv(nn, xdp);
 case 128:
  return nfp_net_xdp_setup_hw(nn, xdp);
 case 131:
  return xdp_attachment_query(&nn->xdp, xdp);
 case 130:
  return xdp_attachment_query(&nn->xdp_hw, xdp);
 default:
  return nfp_app_bpf(nn->app, nn, xdp);
 }
}
