
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow {int dummy; } ;


 int MVPP2_N_PRS_FLOWS ;
 struct mvpp2_cls_flow const* cls_flows ;

const struct mvpp2_cls_flow *mvpp2_cls_flow_get(int flow)
{
 if (flow >= MVPP2_N_PRS_FLOWS)
  return ((void*)0);

 return &cls_flows[flow];
}
