
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ mbox_off; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;


 scalar_t__ NFP_NET_CFG_MBOX_SIMPLE_CMD ;
 int NFP_NET_CFG_UPDATE_MBOX ;
 int nfp_net_reconfig_post (struct nfp_net*,int ) ;
 int nn_writeq (struct nfp_net*,scalar_t__,scalar_t__) ;

void nfp_net_mbox_reconfig_post(struct nfp_net *nn, u32 mbox_cmd)
{
 u32 mbox = nn->tlv_caps.mbox_off;

 nn_writeq(nn, mbox + NFP_NET_CFG_MBOX_SIMPLE_CMD, mbox_cmd);

 nfp_net_reconfig_post(nn, NFP_NET_CFG_UPDATE_MBOX);
}
