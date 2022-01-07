
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_hw {int dummy; } ;
typedef enum ice_sw_lkup_type { ____Placeholder_ice_sw_lkup_type } ice_sw_lkup_type ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aq_alloc_free_vsi_list (struct ice_hw*,int *,int,int ) ;
 int ice_aqc_opc_add_sw_rules ;
 int ice_aqc_opc_alloc_res ;
 int ice_update_vsi_list_rule (struct ice_hw*,int *,int ,int ,int,int ,int) ;

__attribute__((used)) static enum ice_status
ice_create_vsi_list_rule(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
    u16 *vsi_list_id, enum ice_sw_lkup_type lkup_type)
{
 enum ice_status status;

 status = ice_aq_alloc_free_vsi_list(hw, vsi_list_id, lkup_type,
         ice_aqc_opc_alloc_res);
 if (status)
  return status;


 return ice_update_vsi_list_rule(hw, vsi_handle_arr, num_vsi,
     *vsi_list_id, 0,
     ice_aqc_opc_add_sw_rules, lkup_type);
}
