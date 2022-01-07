
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_tc_flow_node {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct bnxt_tc_flow {TYPE_1__ actions; } ;
struct bnxt {int dummy; } ;
typedef int __le32 ;


 int BNXT_TC_ACTION_FLAG_TUNNEL_DECAP ;
 int BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP ;
 int bnxt_tc_get_decap_handle (struct bnxt*,struct bnxt_tc_flow*,struct bnxt_tc_flow_node*,int *) ;
 int bnxt_tc_get_encap_handle (struct bnxt*,struct bnxt_tc_flow*,struct bnxt_tc_flow_node*,int *) ;

__attribute__((used)) static int bnxt_tc_get_tunnel_handle(struct bnxt *bp,
         struct bnxt_tc_flow *flow,
         struct bnxt_tc_flow_node *flow_node,
         __le32 *tunnel_handle)
{
 if (flow->actions.flags & BNXT_TC_ACTION_FLAG_TUNNEL_DECAP)
  return bnxt_tc_get_decap_handle(bp, flow, flow_node,
      tunnel_handle);
 else if (flow->actions.flags & BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP)
  return bnxt_tc_get_encap_handle(bp, flow, flow_node,
      tunnel_handle);
 else
  return 0;
}
