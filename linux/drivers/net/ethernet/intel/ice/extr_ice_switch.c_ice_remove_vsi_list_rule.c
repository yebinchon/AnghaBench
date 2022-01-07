
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ice_hw {int dummy; } ;
struct TYPE_3__ {void* index; } ;
struct TYPE_4__ {TYPE_1__ vsi_list; } ;
struct ice_aqc_sw_rules_elem {TYPE_2__ pdata; void* type; } ;
typedef enum ice_sw_lkup_type { ____Placeholder_ice_sw_lkup_type } ice_sw_lkup_type ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 scalar_t__ ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR ;
 int ICE_ERR_NO_MEMORY ;
 scalar_t__ ICE_SW_RULE_VSI_LIST_SIZE (int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 int devm_kfree (int ,struct ice_aqc_sw_rules_elem*) ;
 struct ice_aqc_sw_rules_elem* devm_kzalloc (int ,scalar_t__,int ) ;
 int ice_aq_alloc_free_vsi_list (struct ice_hw*,scalar_t__*,int,int ) ;
 int ice_aqc_opc_free_res ;
 int ice_hw_to_dev (struct ice_hw*) ;

__attribute__((used)) static enum ice_status
ice_remove_vsi_list_rule(struct ice_hw *hw, u16 vsi_list_id,
    enum ice_sw_lkup_type lkup_type)
{
 struct ice_aqc_sw_rules_elem *s_rule;
 enum ice_status status;
 u16 s_rule_size;

 s_rule_size = (u16)ICE_SW_RULE_VSI_LIST_SIZE(0);
 s_rule = devm_kzalloc(ice_hw_to_dev(hw), s_rule_size, GFP_KERNEL);
 if (!s_rule)
  return ICE_ERR_NO_MEMORY;

 s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR);
 s_rule->pdata.vsi_list.index = cpu_to_le16(vsi_list_id);




 status = ice_aq_alloc_free_vsi_list(hw, &vsi_list_id, lkup_type,
         ice_aqc_opc_free_res);

 devm_kfree(ice_hw_to_dev(hw), s_rule);
 return status;
}
