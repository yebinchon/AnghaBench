
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ocelot_ace_rule {TYPE_1__* port; } ;
typedef int del_ace ;
struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int ocelot; } ;


 TYPE_2__* acl_block ;
 int is2_entry_set (int ,int,struct ocelot_ace_rule*) ;
 int memset (struct ocelot_ace_rule*,int ,int) ;
 int ocelot_ace_rule_del (TYPE_2__*,struct ocelot_ace_rule*) ;
 int ocelot_ace_rule_get_index_id (TYPE_2__*,struct ocelot_ace_rule*) ;
 struct ocelot_ace_rule* ocelot_ace_rule_get_rule_index (TYPE_2__*,int) ;

int ocelot_ace_rule_offload_del(struct ocelot_ace_rule *rule)
{
 struct ocelot_ace_rule del_ace;
 struct ocelot_ace_rule *ace;
 int i, index;

 memset(&del_ace, 0, sizeof(del_ace));


 index = ocelot_ace_rule_get_index_id(acl_block, rule);


 ocelot_ace_rule_del(acl_block, rule);


 for (i = index; i < acl_block->count; i++) {
  ace = ocelot_ace_rule_get_rule_index(acl_block, i);
  is2_entry_set(rule->port->ocelot, i, ace);
 }


 is2_entry_set(rule->port->ocelot, acl_block->count, &del_ace);

 return 0;
}
