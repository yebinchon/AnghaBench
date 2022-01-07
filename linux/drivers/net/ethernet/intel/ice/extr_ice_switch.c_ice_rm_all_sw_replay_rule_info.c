
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct list_head {int dummy; } ;
struct ice_switch_info {TYPE_1__* recp_list; } ;
struct ice_hw {struct ice_switch_info* switch_info; } ;
struct TYPE_2__ {struct list_head filt_replay_rules; } ;


 size_t ICE_SW_LKUP_LAST ;
 int ice_rem_sw_rule_info (struct ice_hw*,struct list_head*) ;
 int list_empty (struct list_head*) ;

void ice_rm_all_sw_replay_rule_info(struct ice_hw *hw)
{
 struct ice_switch_info *sw = hw->switch_info;
 u8 i;

 if (!sw)
  return;

 for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
  if (!list_empty(&sw->recp_list[i].filt_replay_rules)) {
   struct list_head *l_head;

   l_head = &sw->recp_list[i].filt_replay_rules;
   ice_rem_sw_rule_info(hw, l_head);
  }
 }
}
