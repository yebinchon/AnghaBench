
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port_block {int dummy; } ;
struct flow_cls_offload {int command; } ;


 int EOPNOTSUPP ;



 int ocelot_flower_destroy (struct flow_cls_offload*,struct ocelot_port_block*) ;
 int ocelot_flower_replace (struct flow_cls_offload*,struct ocelot_port_block*) ;
 int ocelot_flower_stats_update (struct flow_cls_offload*,struct ocelot_port_block*) ;

__attribute__((used)) static int ocelot_setup_tc_cls_flower(struct flow_cls_offload *f,
          struct ocelot_port_block *port_block)
{
 switch (f->command) {
 case 129:
  return ocelot_flower_replace(f, port_block);
 case 130:
  return ocelot_flower_destroy(f, port_block);
 case 128:
  return ocelot_flower_stats_update(f, port_block);
 default:
  return -EOPNOTSUPP;
 }
}
