
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port_block {int dummy; } ;
struct ocelot_port {int dummy; } ;
struct flow_block_offload {scalar_t__ binder_type; int driver_block_list; int block; } ;
struct flow_block_cb {int driver_list; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ;
 scalar_t__ IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int ,struct ocelot_port*,struct ocelot_port_block*,int ) ;
 int flow_block_cb_incref (struct flow_block_cb*) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int ,struct ocelot_port*) ;
 struct ocelot_port_block* flow_block_cb_priv (struct flow_block_cb*) ;
 int list_add_tail (int *,int ) ;
 struct ocelot_port_block* ocelot_port_block_create (struct ocelot_port*) ;
 int ocelot_port_block_destroy (struct ocelot_port_block*) ;
 int ocelot_setup_tc_block_cb_flower ;
 int ocelot_tc_block_unbind ;

int ocelot_setup_tc_block_flower_bind(struct ocelot_port *port,
          struct flow_block_offload *f)
{
 struct ocelot_port_block *port_block;
 struct flow_block_cb *block_cb;
 int ret;

 if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS)
  return -EOPNOTSUPP;

 block_cb = flow_block_cb_lookup(f->block,
     ocelot_setup_tc_block_cb_flower, port);
 if (!block_cb) {
  port_block = ocelot_port_block_create(port);
  if (!port_block)
   return -ENOMEM;

  block_cb = flow_block_cb_alloc(ocelot_setup_tc_block_cb_flower,
            port, port_block,
            ocelot_tc_block_unbind);
  if (IS_ERR(block_cb)) {
   ret = PTR_ERR(block_cb);
   goto err_cb_register;
  }
  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, f->driver_block_list);
 } else {
  port_block = flow_block_cb_priv(block_cb);
 }

 flow_block_cb_incref(block_cb);
 return 0;

err_cb_register:
 ocelot_port_block_destroy(port_block);

 return ret;
}
