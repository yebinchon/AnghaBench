
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int priv; int id; } ;
struct mvpp2_cls_c2_entry {int * tcam; } ;


 int BIT (int ) ;
 int MVPP22_CLS_C2_PORT_ID (int ) ;
 int mvpp2_cls_c2_read (int ,int,struct mvpp2_cls_c2_entry*) ;
 int mvpp2_cls_c2_write (int ,struct mvpp2_cls_c2_entry*) ;

__attribute__((used)) static void mvpp22_port_c2_lookup_disable(struct mvpp2_port *port, int entry)
{
 struct mvpp2_cls_c2_entry c2;

 mvpp2_cls_c2_read(port->priv, entry, &c2);


 c2.tcam[4] &= ~(MVPP22_CLS_C2_PORT_ID(BIT(port->id)));

 mvpp2_cls_c2_write(port->priv, &c2);
}
