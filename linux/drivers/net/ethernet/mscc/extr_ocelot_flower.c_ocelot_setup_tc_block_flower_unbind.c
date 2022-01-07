
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int dummy; } ;
struct flow_block_offload {int block; } ;
struct flow_block_cb {int driver_list; } ;


 int flow_block_cb_decref (struct flow_block_cb*) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int ,struct ocelot_port*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int list_del (int *) ;
 int ocelot_setup_tc_block_cb_flower ;

void ocelot_setup_tc_block_flower_unbind(struct ocelot_port *port,
      struct flow_block_offload *f)
{
 struct flow_block_cb *block_cb;

 block_cb = flow_block_cb_lookup(f->block,
     ocelot_setup_tc_block_cb_flower, port);
 if (!block_cb)
  return;

 if (!flow_block_cb_decref(block_cb)) {
  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
 }
}
