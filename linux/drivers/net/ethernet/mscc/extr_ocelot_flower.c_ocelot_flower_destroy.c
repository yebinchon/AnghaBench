
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocelot_port_block {TYPE_3__* port; } ;
struct ocelot_ace_rule {int id; TYPE_3__* port; int prio; } ;
struct TYPE_4__ {int prio; } ;
struct flow_cls_offload {int cookie; TYPE_1__ common; } ;
struct TYPE_5__ {int offload_cnt; } ;
struct TYPE_6__ {TYPE_2__ tc; } ;


 int ocelot_ace_rule_offload_del (struct ocelot_ace_rule*) ;

__attribute__((used)) static int ocelot_flower_destroy(struct flow_cls_offload *f,
     struct ocelot_port_block *port_block)
{
 struct ocelot_ace_rule rule;
 int ret;

 rule.prio = f->common.prio;
 rule.port = port_block->port;
 rule.id = f->cookie;

 ret = ocelot_ace_rule_offload_del(&rule);
 if (ret)
  return ret;

 port_block->port->tc.offload_cnt--;
 return 0;
}
