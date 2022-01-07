
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ mbox_off; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;


 scalar_t__ NFP_NET_CFG_MBOX_SIMPLE_CMD ;
 scalar_t__ NFP_NET_CFG_MBOX_SIMPLE_RET ;
 int NFP_NET_CFG_UPDATE_MBOX ;
 int __nfp_net_reconfig (struct nfp_net*,int ) ;
 int nn_err (struct nfp_net*,char*) ;
 int nn_readl (struct nfp_net*,scalar_t__) ;
 int nn_writeq (struct nfp_net*,scalar_t__,scalar_t__) ;

int nfp_net_mbox_reconfig(struct nfp_net *nn, u32 mbox_cmd)
{
 u32 mbox = nn->tlv_caps.mbox_off;
 int ret;

 nn_writeq(nn, mbox + NFP_NET_CFG_MBOX_SIMPLE_CMD, mbox_cmd);

 ret = __nfp_net_reconfig(nn, NFP_NET_CFG_UPDATE_MBOX);
 if (ret) {
  nn_err(nn, "Mailbox update error\n");
  return ret;
 }

 return -nn_readl(nn, mbox + NFP_NET_CFG_MBOX_SIMPLE_RET);
}
