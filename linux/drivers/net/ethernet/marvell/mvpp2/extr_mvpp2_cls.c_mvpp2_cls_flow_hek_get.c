
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int* data; } ;


 int MVPP2_CLS_FLOW_TBL2_FLD_MASK ;
 int MVPP2_CLS_FLOW_TBL2_FLD_OFFS (int) ;

__attribute__((used)) static int mvpp2_cls_flow_hek_get(struct mvpp2_cls_flow_entry *fe,
      int field_index)
{
 return (fe->data[2] >> MVPP2_CLS_FLOW_TBL2_FLD_OFFS(field_index)) &
  MVPP2_CLS_FLOW_TBL2_FLD_MASK;
}
