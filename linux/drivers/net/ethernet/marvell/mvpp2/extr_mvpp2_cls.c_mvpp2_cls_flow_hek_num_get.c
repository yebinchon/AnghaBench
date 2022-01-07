
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int* data; } ;


 int MVPP2_CLS_FLOW_TBL1_N_FIELDS_MASK ;

__attribute__((used)) static int mvpp2_cls_flow_hek_num_get(struct mvpp2_cls_flow_entry *fe)
{
 return fe->data[1] & MVPP2_CLS_FLOW_TBL1_N_FIELDS_MASK;
}
