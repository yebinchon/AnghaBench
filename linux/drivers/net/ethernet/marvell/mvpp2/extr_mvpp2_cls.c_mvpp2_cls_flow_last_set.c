
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int* data; } ;


 int MVPP2_CLS_FLOW_TBL0_LAST ;

__attribute__((used)) static void mvpp2_cls_flow_last_set(struct mvpp2_cls_flow_entry *fe,
        bool is_last)
{
 fe->data[0] &= ~MVPP2_CLS_FLOW_TBL0_LAST;
 fe->data[0] |= !!is_last;
}
