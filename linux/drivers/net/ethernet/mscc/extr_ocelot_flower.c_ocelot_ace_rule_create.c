
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocelot_port_block {TYPE_1__* port; } ;
struct ocelot_ace_rule {int chip_port; TYPE_1__* port; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_2__ {int chip_port; } ;


 int GFP_KERNEL ;
 struct ocelot_ace_rule* kzalloc (int,int ) ;

__attribute__((used)) static
struct ocelot_ace_rule *ocelot_ace_rule_create(struct flow_cls_offload *f,
            struct ocelot_port_block *block)
{
 struct ocelot_ace_rule *rule;

 rule = kzalloc(sizeof(*rule), GFP_KERNEL);
 if (!rule)
  return ((void*)0);

 rule->port = block->port;
 rule->chip_port = block->port->chip_port;
 return rule;
}
