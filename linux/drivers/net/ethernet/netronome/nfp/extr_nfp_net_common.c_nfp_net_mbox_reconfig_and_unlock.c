
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int dummy; } ;


 int nfp_net_mbox_reconfig (struct nfp_net*,int ) ;
 int nn_ctrl_bar_unlock (struct nfp_net*) ;

int nfp_net_mbox_reconfig_and_unlock(struct nfp_net *nn, u32 mbox_cmd)
{
 int ret;

 ret = nfp_net_mbox_reconfig(nn, mbox_cmd);
 nn_ctrl_bar_unlock(nn);
 return ret;
}
