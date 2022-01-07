
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mutex {int dummy; } ;
struct ice_vsi_list_map_info {int ref_cnt; int vsi_map; } ;
struct ice_switch_info {TYPE_3__* recp_list; } ;
struct ice_hw {struct ice_switch_info* switch_info; } ;
struct TYPE_8__ {scalar_t__ vsi_list_id; int hw_vsi_id; } ;
struct TYPE_5__ {scalar_t__ vlan_id; } ;
struct TYPE_6__ {TYPE_1__ vlan; } ;
struct ice_fltr_info {scalar_t__ vsi_handle; scalar_t__ src_id; int lkup_type; scalar_t__ fltr_act; TYPE_4__ fwd_id; int fltr_rule_id; int src; TYPE_2__ l_data; } ;
struct ice_fltr_mgmt_list_entry {int vsi_count; struct ice_vsi_list_map_info* vsi_list_info; struct ice_fltr_info fltr_info; } ;
struct ice_fltr_list_entry {struct ice_fltr_info fltr_info; } ;
typedef enum ice_sw_lkup_type { ____Placeholder_ice_sw_lkup_type } ice_sw_lkup_type ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_7__ {struct mutex filt_rule_lock; } ;


 int ICE_DBG_SW ;
 int ICE_ERR_ALREADY_EXISTS ;
 int ICE_ERR_CFG ;
 int ICE_ERR_DOES_NOT_EXIST ;
 int ICE_ERR_PARAM ;
 scalar_t__ ICE_FWD_TO_VSI ;
 void* ICE_FWD_TO_VSI_LIST ;
 scalar_t__ ICE_MAX_VLAN_ID ;
 int ICE_MAX_VSI ;
 scalar_t__ ICE_SRC_ID_VSI ;
 size_t ICE_SW_LKUP_VLAN ;
 scalar_t__ find_first_bit (int ,int ) ;
 int ice_add_update_vsi_list (struct ice_hw*,struct ice_fltr_mgmt_list_entry*,struct ice_fltr_info*,struct ice_fltr_info*) ;
 int ice_create_pkt_fwd_rule (struct ice_hw*,struct ice_fltr_list_entry*) ;
 void* ice_create_vsi_list_map (struct ice_hw*,scalar_t__*,int,scalar_t__) ;
 int ice_create_vsi_list_rule (struct ice_hw*,scalar_t__*,int,scalar_t__*,int) ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 struct ice_fltr_mgmt_list_entry* ice_find_rule_entry (struct ice_hw*,size_t,struct ice_fltr_info*) ;
 struct ice_vsi_list_map_info* ice_find_vsi_list_entry (struct ice_hw*,size_t,scalar_t__,scalar_t__*) ;
 int ice_get_hw_vsi_num (struct ice_hw*,scalar_t__) ;
 int ice_is_vsi_valid (struct ice_hw*,scalar_t__) ;
 int ice_update_pkt_fwd_rule (struct ice_hw*,struct ice_fltr_info*) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;

__attribute__((used)) static enum ice_status
ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
{
 struct ice_switch_info *sw = hw->switch_info;
 struct ice_fltr_mgmt_list_entry *v_list_itr;
 struct ice_fltr_info *new_fltr, *cur_fltr;
 enum ice_sw_lkup_type lkup_type;
 u16 vsi_list_id = 0, vsi_handle;
 struct mutex *rule_lock;
 enum ice_status status = 0;

 if (!ice_is_vsi_valid(hw, f_entry->fltr_info.vsi_handle))
  return ICE_ERR_PARAM;

 f_entry->fltr_info.fwd_id.hw_vsi_id =
  ice_get_hw_vsi_num(hw, f_entry->fltr_info.vsi_handle);
 new_fltr = &f_entry->fltr_info;


 if (new_fltr->l_data.vlan.vlan_id > ICE_MAX_VLAN_ID)
  return ICE_ERR_PARAM;

 if (new_fltr->src_id != ICE_SRC_ID_VSI)
  return ICE_ERR_PARAM;

 new_fltr->src = new_fltr->fwd_id.hw_vsi_id;
 lkup_type = new_fltr->lkup_type;
 vsi_handle = new_fltr->vsi_handle;
 rule_lock = &sw->recp_list[ICE_SW_LKUP_VLAN].filt_rule_lock;
 mutex_lock(rule_lock);
 v_list_itr = ice_find_rule_entry(hw, ICE_SW_LKUP_VLAN, new_fltr);
 if (!v_list_itr) {
  struct ice_vsi_list_map_info *map_info = ((void*)0);

  if (new_fltr->fltr_act == ICE_FWD_TO_VSI) {





   map_info = ice_find_vsi_list_entry(hw, ICE_SW_LKUP_VLAN,
          vsi_handle,
          &vsi_list_id);
   if (!map_info) {
    status = ice_create_vsi_list_rule(hw,
          &vsi_handle,
          1,
          &vsi_list_id,
          lkup_type);
    if (status)
     goto exit;
   }

   new_fltr->fltr_act = ICE_FWD_TO_VSI_LIST;
   new_fltr->fwd_id.vsi_list_id = vsi_list_id;
  }

  status = ice_create_pkt_fwd_rule(hw, f_entry);
  if (!status) {
   v_list_itr = ice_find_rule_entry(hw, ICE_SW_LKUP_VLAN,
        new_fltr);
   if (!v_list_itr) {
    status = ICE_ERR_DOES_NOT_EXIST;
    goto exit;
   }

   if (map_info) {
    v_list_itr->vsi_list_info = map_info;
    map_info->ref_cnt++;
   } else {
    v_list_itr->vsi_list_info =
     ice_create_vsi_list_map(hw, &vsi_handle,
        1, vsi_list_id);
   }
  }
 } else if (v_list_itr->vsi_list_info->ref_cnt == 1) {



  cur_fltr = &v_list_itr->fltr_info;
  status = ice_add_update_vsi_list(hw, v_list_itr, cur_fltr,
       new_fltr);
 } else {





  struct ice_fltr_info tmp_fltr;
  u16 vsi_handle_arr[2];
  u16 cur_handle;




  if (v_list_itr->vsi_count > 1 &&
      v_list_itr->vsi_list_info->ref_cnt > 1) {
   ice_debug(hw, ICE_DBG_SW,
      "Invalid configuration: Optimization to reuse VSI list with more than one VSI is not being done yet\n");
   status = ICE_ERR_CFG;
   goto exit;
  }

  cur_handle =
   find_first_bit(v_list_itr->vsi_list_info->vsi_map,
           ICE_MAX_VSI);


  if (cur_handle == vsi_handle) {
   status = ICE_ERR_ALREADY_EXISTS;
   goto exit;
  }

  vsi_handle_arr[0] = cur_handle;
  vsi_handle_arr[1] = vsi_handle;
  status = ice_create_vsi_list_rule(hw, &vsi_handle_arr[0], 2,
        &vsi_list_id, lkup_type);
  if (status)
   goto exit;

  tmp_fltr = v_list_itr->fltr_info;
  tmp_fltr.fltr_rule_id = v_list_itr->fltr_info.fltr_rule_id;
  tmp_fltr.fwd_id.vsi_list_id = vsi_list_id;
  tmp_fltr.fltr_act = ICE_FWD_TO_VSI_LIST;



  status = ice_update_pkt_fwd_rule(hw, &tmp_fltr);
  if (status)
   goto exit;




  v_list_itr->vsi_list_info->ref_cnt--;


  v_list_itr->fltr_info.fwd_id.vsi_list_id = vsi_list_id;
  v_list_itr->vsi_list_info =
   ice_create_vsi_list_map(hw, &vsi_handle_arr[0], 2,
      vsi_list_id);
  v_list_itr->vsi_count++;
 }

exit:
 mutex_unlock(rule_lock);
 return status;
}
