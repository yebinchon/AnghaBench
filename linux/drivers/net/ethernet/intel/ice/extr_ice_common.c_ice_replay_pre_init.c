
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ice_switch_info {TYPE_1__* recp_list; } ;
struct ice_hw {struct ice_switch_info* switch_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {int filt_replay_rules; int filt_rules; } ;


 size_t ICE_SW_LKUP_LAST ;
 int ice_rm_all_sw_replay_rule_info (struct ice_hw*) ;
 int list_replace_init (int *,int *) ;

__attribute__((used)) static enum ice_status ice_replay_pre_init(struct ice_hw *hw)
{
 struct ice_switch_info *sw = hw->switch_info;
 u8 i;


 ice_rm_all_sw_replay_rule_info(hw);




 for (i = 0; i < ICE_SW_LKUP_LAST; i++)
  list_replace_init(&sw->recp_list[i].filt_rules,
      &sw->recp_list[i].filt_replay_rules);

 return 0;
}
