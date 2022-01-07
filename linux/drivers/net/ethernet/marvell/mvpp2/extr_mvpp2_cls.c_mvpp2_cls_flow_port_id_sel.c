
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_cls_flow_entry {int * data; } ;


 int MVPP2_CLS_FLOW_TBL0_PORT_ID_SEL ;

__attribute__((used)) static void mvpp2_cls_flow_port_id_sel(struct mvpp2_cls_flow_entry *fe,
           bool from_packet)
{
 if (from_packet)
  fe->data[0] |= MVPP2_CLS_FLOW_TBL0_PORT_ID_SEL;
 else
  fe->data[0] &= ~MVPP2_CLS_FLOW_TBL0_PORT_ID_SEL;
}
