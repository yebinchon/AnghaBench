
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct nfp_net {int * vxlan_ports; TYPE_1__ dp; } ;
typedef int port ;
typedef int __be16 ;


 int BUILD_BUG_ON (int) ;
 int NFP_NET_CFG_CTRL_VXLAN ;
 int NFP_NET_CFG_UPDATE_VXLAN ;
 scalar_t__ NFP_NET_CFG_VXLAN_PORT ;
 int NFP_NET_N_VXLAN_PORTS ;
 int be16_to_cpu (int ) ;
 int nfp_net_reconfig_post (struct nfp_net*,int ) ;
 int nn_writel (struct nfp_net*,scalar_t__,int) ;

__attribute__((used)) static void nfp_net_set_vxlan_port(struct nfp_net *nn, int idx, __be16 port)
{
 int i;

 nn->vxlan_ports[idx] = port;

 if (!(nn->dp.ctrl & NFP_NET_CFG_CTRL_VXLAN))
  return;

 BUILD_BUG_ON(NFP_NET_N_VXLAN_PORTS & 1);
 for (i = 0; i < NFP_NET_N_VXLAN_PORTS; i += 2)
  nn_writel(nn, NFP_NET_CFG_VXLAN_PORT + i * sizeof(port),
     be16_to_cpu(nn->vxlan_ports[i + 1]) << 16 |
     be16_to_cpu(nn->vxlan_ports[i]));

 nfp_net_reconfig_post(nn, NFP_NET_CFG_UPDATE_VXLAN);
}
