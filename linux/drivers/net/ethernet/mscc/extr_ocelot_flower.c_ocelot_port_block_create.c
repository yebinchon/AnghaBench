
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port_block {struct ocelot_port* port; } ;
struct ocelot_port {int dummy; } ;


 int GFP_KERNEL ;
 struct ocelot_port_block* kzalloc (int,int ) ;

__attribute__((used)) static struct ocelot_port_block*
ocelot_port_block_create(struct ocelot_port *port)
{
 struct ocelot_port_block *port_block;

 port_block = kzalloc(sizeof(*port_block), GFP_KERNEL);
 if (!port_block)
  return ((void*)0);

 port_block->port = port;

 return port_block;
}
