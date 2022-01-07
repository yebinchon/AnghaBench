
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocelot_port_block {int port; } ;
struct TYPE_3__ {int pkts; } ;
struct ocelot_ace_rule {TYPE_1__ stats; int id; int port; int prio; } ;
struct TYPE_4__ {int prio; } ;
struct flow_cls_offload {int stats; int cookie; TYPE_2__ common; } ;


 int flow_stats_update (int *,int,int ,int) ;
 int ocelot_ace_rule_stats_update (struct ocelot_ace_rule*) ;

__attribute__((used)) static int ocelot_flower_stats_update(struct flow_cls_offload *f,
          struct ocelot_port_block *port_block)
{
 struct ocelot_ace_rule rule;
 int ret;

 rule.prio = f->common.prio;
 rule.port = port_block->port;
 rule.id = f->cookie;
 ret = ocelot_ace_rule_stats_update(&rule);
 if (ret)
  return ret;

 flow_stats_update(&f->stats, 0x0, rule.stats.pkts, 0x0);
 return 0;
}
