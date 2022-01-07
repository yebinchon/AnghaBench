
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct flow_cls_offload {TYPE_2__* rule; } ;
struct flow_action_entry {scalar_t__ id; int dev; } ;
struct TYPE_3__ {int num_entries; struct flow_action_entry* entries; } ;
struct TYPE_4__ {TYPE_1__ action; } ;


 scalar_t__ FLOW_ACTION_MIRRED ;
 scalar_t__ FLOW_ACTION_REDIRECT ;
 int netif_is_gretap (int ) ;

__attribute__((used)) static bool
nfp_flower_tun_is_gre(struct flow_cls_offload *flow, int start_idx)
{
 struct flow_action_entry *act = flow->rule->action.entries;
 int num_act = flow->rule->action.num_entries;
 int act_idx;


 for (act_idx = start_idx + 1; act_idx < num_act; act_idx++)
  if (act[act_idx].id == FLOW_ACTION_REDIRECT ||
      act[act_idx].id == FLOW_ACTION_MIRRED)
   return netif_is_gretap(act[act_idx].dev);

 return 0;
}
