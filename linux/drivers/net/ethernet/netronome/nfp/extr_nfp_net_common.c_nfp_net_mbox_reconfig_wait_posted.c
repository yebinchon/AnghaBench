
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ mbox_off; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;


 scalar_t__ NFP_NET_CFG_MBOX_SIMPLE_RET ;
 int nfp_net_reconfig_wait_posted (struct nfp_net*) ;
 int nn_readl (struct nfp_net*,scalar_t__) ;

int nfp_net_mbox_reconfig_wait_posted(struct nfp_net *nn)
{
 u32 mbox = nn->tlv_caps.mbox_off;

 nfp_net_reconfig_wait_posted(nn);

 return -nn_readl(nn, mbox + NFP_NET_CFG_MBOX_SIMPLE_RET);
}
