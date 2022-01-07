
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow {int dummy; } ;
struct mvpp2 {int dummy; } ;


 int MVPP2_N_PRS_FLOWS ;
 struct mvpp2_cls_flow* mvpp2_cls_flow_get (int) ;
 int mvpp2_cls_flow_init (struct mvpp2*,struct mvpp2_cls_flow const*) ;
 int mvpp2_cls_flow_lkp_init (struct mvpp2*,struct mvpp2_cls_flow const*) ;
 int mvpp2_cls_flow_prs_init (struct mvpp2*,struct mvpp2_cls_flow const*) ;

__attribute__((used)) static void mvpp2_cls_port_init_flows(struct mvpp2 *priv)
{
 const struct mvpp2_cls_flow *flow;
 int i;

 for (i = 0; i < MVPP2_N_PRS_FLOWS; i++) {
  flow = mvpp2_cls_flow_get(i);
  if (!flow)
   break;

  mvpp2_cls_flow_prs_init(priv, flow);
  mvpp2_cls_flow_lkp_init(priv, flow);
  mvpp2_cls_flow_init(priv, flow);
 }
}
