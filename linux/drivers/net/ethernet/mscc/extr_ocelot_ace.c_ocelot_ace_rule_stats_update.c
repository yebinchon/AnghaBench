
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pkts; } ;
struct ocelot_ace_rule {TYPE_2__* port; TYPE_1__ stats; } ;
struct TYPE_4__ {int ocelot; } ;


 int acl_block ;
 int is2_entry_get (struct ocelot_ace_rule*,int) ;
 int is2_entry_set (int ,int,struct ocelot_ace_rule*) ;
 int ocelot_ace_rule_get_index_id (int ,struct ocelot_ace_rule*) ;
 struct ocelot_ace_rule* ocelot_ace_rule_get_rule_index (int ,int) ;

int ocelot_ace_rule_stats_update(struct ocelot_ace_rule *rule)
{
 struct ocelot_ace_rule *tmp;
 int index;

 index = ocelot_ace_rule_get_index_id(acl_block, rule);
 is2_entry_get(rule, index);


 tmp = ocelot_ace_rule_get_rule_index(acl_block, index);
 tmp->stats.pkts = 0;
 is2_entry_set(rule->port->ocelot, index, tmp);

 return 0;
}
