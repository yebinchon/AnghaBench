
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_shared; } ;
struct ocelot_port {TYPE_1__ tc; int dev; } ;
struct flow_block_offload {int command; scalar_t__ binder_type; int block; int * driver_block_list; int block_shared; } ;
struct flow_block_cb {int driver_list; } ;
typedef int flow_setup_cb_t ;


 int EBUSY ;
 int ENOENT ;
 int EOPNOTSUPP ;

 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS ;
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;

 int IS_ERR (struct flow_block_cb*) ;
 int PTR_ERR (struct flow_block_cb*) ;
 int flow_block_cb_add (struct flow_block_cb*,struct flow_block_offload*) ;
 struct flow_block_cb* flow_block_cb_alloc (int *,struct ocelot_port*,struct ocelot_port*,int *) ;
 int flow_block_cb_free (struct flow_block_cb*) ;
 int flow_block_cb_is_busy (int *,struct ocelot_port*,int *) ;
 struct flow_block_cb* flow_block_cb_lookup (int ,int *,struct ocelot_port*) ;
 int flow_block_cb_remove (struct flow_block_cb*,struct flow_block_offload*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int netdev_dbg (int ,char*,int,scalar_t__) ;
 int ocelot_block_cb_list ;
 int * ocelot_setup_tc_block_cb_eg ;
 int * ocelot_setup_tc_block_cb_ig ;
 int ocelot_setup_tc_block_flower_bind (struct ocelot_port*,struct flow_block_offload*) ;
 int ocelot_setup_tc_block_flower_unbind (struct ocelot_port*,struct flow_block_offload*) ;

__attribute__((used)) static int ocelot_setup_tc_block(struct ocelot_port *port,
     struct flow_block_offload *f)
{
 struct flow_block_cb *block_cb;
 flow_setup_cb_t *cb;
 int err;

 netdev_dbg(port->dev, "tc_block command %d, binder_type %d\n",
     f->command, f->binder_type);

 if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS) {
  cb = ocelot_setup_tc_block_cb_ig;
  port->tc.block_shared = f->block_shared;
 } else if (f->binder_type == FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS) {
  cb = ocelot_setup_tc_block_cb_eg;
 } else {
  return -EOPNOTSUPP;
 }

 f->driver_block_list = &ocelot_block_cb_list;

 switch (f->command) {
 case 129:
  if (flow_block_cb_is_busy(cb, port, &ocelot_block_cb_list))
   return -EBUSY;

  block_cb = flow_block_cb_alloc(cb, port, port, ((void*)0));
  if (IS_ERR(block_cb))
   return PTR_ERR(block_cb);

  err = ocelot_setup_tc_block_flower_bind(port, f);
  if (err < 0) {
   flow_block_cb_free(block_cb);
   return err;
  }
  flow_block_cb_add(block_cb, f);
  list_add_tail(&block_cb->driver_list, f->driver_block_list);
  return 0;
 case 128:
  block_cb = flow_block_cb_lookup(f->block, cb, port);
  if (!block_cb)
   return -ENOENT;

  ocelot_setup_tc_block_flower_unbind(port, f);
  flow_block_cb_remove(block_cb, f);
  list_del(&block_cb->driver_list);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
