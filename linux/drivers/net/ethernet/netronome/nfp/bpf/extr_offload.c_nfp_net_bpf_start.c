
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct netlink_ext_ack {int dummy; } ;


 int NFP_NET_CFG_CTRL ;
 int NFP_NET_CFG_CTRL_BPF ;
 int NFP_NET_CFG_UPDATE_GEN ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int nfp_net_reconfig (struct nfp_net*,int ) ;
 int nn_writel (struct nfp_net*,int ,int ) ;

__attribute__((used)) static void
nfp_net_bpf_start(struct nfp_net *nn, struct netlink_ext_ack *extack)
{
 int err;


 nn->dp.ctrl |= NFP_NET_CFG_CTRL_BPF;
 nn_writel(nn, NFP_NET_CFG_CTRL, nn->dp.ctrl);
 err = nfp_net_reconfig(nn, NFP_NET_CFG_UPDATE_GEN);
 if (err)
  NL_SET_ERR_MSG_MOD(extack,
       "FW command error while enabling BPF");
}
