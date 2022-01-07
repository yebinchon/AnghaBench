
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port_block {int dummy; } ;


 int ocelot_port_block_destroy (struct ocelot_port_block*) ;

__attribute__((used)) static void ocelot_tc_block_unbind(void *cb_priv)
{
 struct ocelot_port_block *port_block = cb_priv;

 ocelot_port_block_destroy(port_block);
}
