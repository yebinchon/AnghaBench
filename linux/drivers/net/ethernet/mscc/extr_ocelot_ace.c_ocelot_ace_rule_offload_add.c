
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ocelot_ace_rule {TYPE_1__* port; } ;
struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int ocelot; } ;


 TYPE_2__* acl_block ;
 int is2_entry_set (int ,int,struct ocelot_ace_rule*) ;
 int ocelot_ace_rule_add (TYPE_2__*,struct ocelot_ace_rule*) ;
 int ocelot_ace_rule_get_index_id (TYPE_2__*,struct ocelot_ace_rule*) ;
 struct ocelot_ace_rule* ocelot_ace_rule_get_rule_index (TYPE_2__*,int) ;

int ocelot_ace_rule_offload_add(struct ocelot_ace_rule *rule)
{
 struct ocelot_ace_rule *ace;
 int i, index;


 ocelot_ace_rule_add(acl_block, rule);


 index = ocelot_ace_rule_get_index_id(acl_block, rule);


 for (i = acl_block->count - 1; i > index; i--) {
  ace = ocelot_ace_rule_get_rule_index(acl_block, i);
  is2_entry_set(rule->port->ocelot, i, ace);
 }


 is2_entry_set(rule->port->ocelot, index, rule);
 return 0;
}
