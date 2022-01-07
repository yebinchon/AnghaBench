
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvpp2_rfs_rule {int engine; struct flow_rule* flow; } ;
struct TYPE_3__ {struct flow_action_entry* entries; } ;
struct flow_rule {TYPE_1__ action; } ;
struct TYPE_4__ {scalar_t__ index; scalar_t__ ctx; } ;
struct flow_action_entry {scalar_t__ id; TYPE_2__ queue; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ FLOW_ACTION_DROP ;
 scalar_t__ FLOW_ACTION_QUEUE ;
 int MVPP22_CLS_ENGINE_C2 ;
 scalar_t__ mvpp2_cls_c2_build_match (struct mvpp2_rfs_rule*) ;

__attribute__((used)) static int mvpp2_cls_rfs_parse_rule(struct mvpp2_rfs_rule *rule)
{
 struct flow_rule *flow = rule->flow;
 struct flow_action_entry *act;

 act = &flow->action.entries[0];
 if (act->id != FLOW_ACTION_QUEUE && act->id != FLOW_ACTION_DROP)
  return -EOPNOTSUPP;





 if (act->queue.ctx && act->queue.index)
  return -EOPNOTSUPP;




 rule->engine = MVPP22_CLS_ENGINE_C2;

 if (mvpp2_cls_c2_build_match(rule))
  return -EINVAL;

 return 0;
}
