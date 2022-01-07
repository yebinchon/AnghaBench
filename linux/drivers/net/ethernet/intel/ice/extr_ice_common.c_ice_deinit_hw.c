
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int * port_info; } ;


 int devm_kfree (int ,int *) ;
 int ice_cfg_fw_log (struct ice_hw*,int) ;
 int ice_cleanup_fltr_mgmt_struct (struct ice_hw*) ;
 int ice_clear_all_vsi_ctx (struct ice_hw*) ;
 int ice_destroy_all_ctrlq (struct ice_hw*) ;
 int ice_free_hw_tbls (struct ice_hw*) ;
 int ice_free_seg (struct ice_hw*) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_sched_cleanup_all (struct ice_hw*) ;
 int ice_sched_clear_agg (struct ice_hw*) ;

void ice_deinit_hw(struct ice_hw *hw)
{
 ice_cleanup_fltr_mgmt_struct(hw);

 ice_sched_cleanup_all(hw);
 ice_sched_clear_agg(hw);
 ice_free_seg(hw);
 ice_free_hw_tbls(hw);

 if (hw->port_info) {
  devm_kfree(ice_hw_to_dev(hw), hw->port_info);
  hw->port_info = ((void*)0);
 }


 ice_cfg_fw_log(hw, 0);
 ice_destroy_all_ctrlq(hw);


 ice_clear_all_vsi_ctx(hw);
}
