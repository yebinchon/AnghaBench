
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct nfp_net {TYPE_1__ dp; } ;


 int NFP_NET_CFG_CTRL ;
 int NFP_NET_CFG_CTRL_BPF ;
 int NFP_NET_CFG_UPDATE_GEN ;
 int nfp_net_reconfig (struct nfp_net*,int ) ;
 int nn_writel (struct nfp_net*,int ,int) ;

__attribute__((used)) static int nfp_net_bpf_stop(struct nfp_net *nn)
{
 if (!(nn->dp.ctrl & NFP_NET_CFG_CTRL_BPF))
  return 0;

 nn->dp.ctrl &= ~NFP_NET_CFG_CTRL_BPF;
 nn_writel(nn, NFP_NET_CFG_CTRL, nn->dp.ctrl);

 return nfp_net_reconfig(nn, NFP_NET_CFG_UPDATE_GEN);
}
