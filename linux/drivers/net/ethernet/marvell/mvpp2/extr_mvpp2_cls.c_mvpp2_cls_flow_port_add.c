
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_cls_flow_entry {int * data; } ;


 int MVPP2_CLS_FLOW_TBL0_PORT_ID (int ) ;

__attribute__((used)) static void mvpp2_cls_flow_port_add(struct mvpp2_cls_flow_entry *fe,
        u32 port)
{
 fe->data[0] |= MVPP2_CLS_FLOW_TBL0_PORT_ID(port);
}
