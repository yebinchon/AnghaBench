
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int dummy; } ;
struct net_device {int dummy; } ;
struct flow_block_offload {int dummy; } ;


 int flow_block_cb_setup_simple (struct flow_block_offload*,int *,int ,struct nfp_repr*,struct nfp_repr*,int) ;
 int nfp_abm_block_cb_list ;
 int nfp_abm_setup_tc_block_cb ;

int nfp_abm_setup_cls_block(struct net_device *netdev, struct nfp_repr *repr,
       struct flow_block_offload *f)
{
 return flow_block_cb_setup_simple(f, &nfp_abm_block_cb_list,
       nfp_abm_setup_tc_block_cb,
       repr, repr, 1);
}
