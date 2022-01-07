
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int dummy; } ;


 int __nfp_net_reconfig (struct nfp_net*,int ) ;
 int nn_ctrl_bar_lock (struct nfp_net*) ;
 int nn_ctrl_bar_unlock (struct nfp_net*) ;

int nfp_net_reconfig(struct nfp_net *nn, u32 update)
{
 int ret;

 nn_ctrl_bar_lock(nn);
 ret = __nfp_net_reconfig(nn, update);
 nn_ctrl_bar_unlock(nn);

 return ret;
}
