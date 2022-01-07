
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int id; } ;


 int MVPP22_CLS_C2_RFS_LOC (int ,int) ;

__attribute__((used)) static int mvpp2_cls_c2_port_flow_index(struct mvpp2_port *port, int loc)
{
 return MVPP22_CLS_C2_RFS_LOC(port->id, loc);
}
