
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_tc_flow_node {int encap_node; } ;
struct TYPE_2__ {int flags; } ;
struct bnxt_tc_flow {TYPE_1__ actions; } ;
struct bnxt {int dummy; } ;


 int BNXT_TC_ACTION_FLAG_TUNNEL_DECAP ;
 int BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP ;
 int bnxt_tc_put_decap_handle (struct bnxt*,struct bnxt_tc_flow_node*) ;
 int bnxt_tc_put_encap_handle (struct bnxt*,int ) ;

__attribute__((used)) static void bnxt_tc_put_tunnel_handle(struct bnxt *bp,
          struct bnxt_tc_flow *flow,
          struct bnxt_tc_flow_node *flow_node)
{
 if (flow->actions.flags & BNXT_TC_ACTION_FLAG_TUNNEL_DECAP)
  bnxt_tc_put_decap_handle(bp, flow_node);
 else if (flow->actions.flags & BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP)
  bnxt_tc_put_encap_handle(bp, flow_node->encap_node);
}
