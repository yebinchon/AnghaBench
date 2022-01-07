
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocelot_port_block {TYPE_1__* port; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;


 int ocelot_setup_tc_cls_flower (void*,void*) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int ocelot_setup_tc_block_cb_flower(enum tc_setup_type type,
        void *type_data, void *cb_priv)
{
 struct ocelot_port_block *port_block = cb_priv;

 if (!tc_cls_can_offload_and_chain0(port_block->port->dev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 129:
  return ocelot_setup_tc_cls_flower(type_data, cb_priv);
 case 128:
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
