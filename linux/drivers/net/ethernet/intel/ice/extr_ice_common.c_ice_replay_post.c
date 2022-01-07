
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;


 int ice_rm_all_sw_replay_rule_info (struct ice_hw*) ;

void ice_replay_post(struct ice_hw *hw)
{

 ice_rm_all_sw_replay_rule_info(hw);
}
