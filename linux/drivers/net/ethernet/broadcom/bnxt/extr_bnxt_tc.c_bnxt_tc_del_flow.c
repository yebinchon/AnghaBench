
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_cls_offload {int cookie; } ;
struct bnxt_tc_info {int flow_ht_params; int flow_table; } ;
struct bnxt_tc_flow_node {int dummy; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;


 int EINVAL ;
 int __bnxt_tc_del_flow (struct bnxt*,struct bnxt_tc_flow_node*) ;
 struct bnxt_tc_flow_node* rhashtable_lookup_fast (int *,int *,int ) ;

__attribute__((used)) static int bnxt_tc_del_flow(struct bnxt *bp,
       struct flow_cls_offload *tc_flow_cmd)
{
 struct bnxt_tc_info *tc_info = bp->tc_info;
 struct bnxt_tc_flow_node *flow_node;

 flow_node = rhashtable_lookup_fast(&tc_info->flow_table,
        &tc_flow_cmd->cookie,
        tc_info->flow_ht_params);
 if (!flow_node)
  return -EINVAL;

 return __bnxt_tc_del_flow(bp, flow_node);
}
