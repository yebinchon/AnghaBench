
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_action_entry {scalar_t__ id; } ;
struct flow_action {struct flow_action_entry* entries; } ;


 scalar_t__ FLOW_ACTION_MANGLE ;

__attribute__((used)) static bool nfp_fl_check_mangle_start(struct flow_action *flow_act,
          int current_act_idx)
{
 struct flow_action_entry current_act;
 struct flow_action_entry prev_act;

 current_act = flow_act->entries[current_act_idx];
 if (current_act.id != FLOW_ACTION_MANGLE)
  return 0;

 if (current_act_idx == 0)
  return 1;

 prev_act = flow_act->entries[current_act_idx - 1];

 return prev_act.id != FLOW_ACTION_MANGLE;
}
