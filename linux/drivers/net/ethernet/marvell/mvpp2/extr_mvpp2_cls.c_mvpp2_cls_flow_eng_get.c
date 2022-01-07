
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int* data; } ;


 int MVPP2_CLS_FLOW_TBL0_ENG_MASK ;
 int MVPP2_CLS_FLOW_TBL0_OFFS ;

int mvpp2_cls_flow_eng_get(struct mvpp2_cls_flow_entry *fe)
{
 return (fe->data[0] >> MVPP2_CLS_FLOW_TBL0_OFFS) &
  MVPP2_CLS_FLOW_TBL0_ENG_MASK;
}
