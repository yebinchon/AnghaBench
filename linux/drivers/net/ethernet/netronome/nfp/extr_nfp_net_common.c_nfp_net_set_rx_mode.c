
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrl; } ;
struct nfp_net {int cap; TYPE_1__ dp; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int NFP_NET_CFG_CTRL ;
 int NFP_NET_CFG_CTRL_L2MC ;
 int NFP_NET_CFG_CTRL_PROMISC ;
 int NFP_NET_CFG_UPDATE_GEN ;
 int netdev_mc_empty (struct net_device*) ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_net_reconfig_post (struct nfp_net*,int ) ;
 int nn_warn (struct nfp_net*,char*) ;
 int nn_writel (struct nfp_net*,int ,int) ;

__attribute__((used)) static void nfp_net_set_rx_mode(struct net_device *netdev)
{
 struct nfp_net *nn = netdev_priv(netdev);
 u32 new_ctrl;

 new_ctrl = nn->dp.ctrl;

 if (!netdev_mc_empty(netdev) || netdev->flags & IFF_ALLMULTI)
  new_ctrl |= nn->cap & NFP_NET_CFG_CTRL_L2MC;
 else
  new_ctrl &= ~NFP_NET_CFG_CTRL_L2MC;

 if (netdev->flags & IFF_PROMISC) {
  if (nn->cap & NFP_NET_CFG_CTRL_PROMISC)
   new_ctrl |= NFP_NET_CFG_CTRL_PROMISC;
  else
   nn_warn(nn, "FW does not support promiscuous mode\n");
 } else {
  new_ctrl &= ~NFP_NET_CFG_CTRL_PROMISC;
 }

 if (new_ctrl == nn->dp.ctrl)
  return;

 nn_writel(nn, NFP_NET_CFG_CTRL, new_ctrl);
 nfp_net_reconfig_post(nn, NFP_NET_CFG_UPDATE_GEN);

 nn->dp.ctrl = new_ctrl;
}
