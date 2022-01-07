
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int * data; } ;


 int MVPP2_CLS_FLOW_TBL1_N_FIELDS (int) ;
 int MVPP2_CLS_FLOW_TBL1_N_FIELDS_MASK ;

__attribute__((used)) static void mvpp2_cls_flow_hek_num_set(struct mvpp2_cls_flow_entry *fe,
           int num_of_fields)
{
 fe->data[1] &= ~MVPP2_CLS_FLOW_TBL1_N_FIELDS_MASK;
 fe->data[1] |= MVPP2_CLS_FLOW_TBL1_N_FIELDS(num_of_fields);
}
