
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ice_sw_recipe {size_t root_rid; int filt_rule_lock; int filt_replay_rules; int filt_rules; } ;
struct ice_hw {TYPE_1__* switch_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {struct ice_sw_recipe* recp_list; } ;


 int GFP_KERNEL ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_MAX_NUM_RECIPES ;
 size_t ICE_SW_LKUP_LAST ;
 int INIT_LIST_HEAD (int *) ;
 struct ice_sw_recipe* devm_kcalloc (int ,int ,int,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int mutex_init (int *) ;

enum ice_status ice_init_def_sw_recp(struct ice_hw *hw)
{
 struct ice_sw_recipe *recps;
 u8 i;

 recps = devm_kcalloc(ice_hw_to_dev(hw), ICE_MAX_NUM_RECIPES,
        sizeof(*recps), GFP_KERNEL);
 if (!recps)
  return ICE_ERR_NO_MEMORY;

 for (i = 0; i < ICE_SW_LKUP_LAST; i++) {
  recps[i].root_rid = i;
  INIT_LIST_HEAD(&recps[i].filt_rules);
  INIT_LIST_HEAD(&recps[i].filt_replay_rules);
  mutex_init(&recps[i].filt_rule_lock);
 }

 hw->switch_info->recp_list = recps;

 return 0;
}
