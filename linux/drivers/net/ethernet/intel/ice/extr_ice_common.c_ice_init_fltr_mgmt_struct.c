
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_switch_info {int vsi_list_map_head; } ;
struct ice_hw {struct ice_switch_info* switch_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_ERR_NO_MEMORY ;
 int INIT_LIST_HEAD (int *) ;
 struct ice_switch_info* devm_kzalloc (int ,int,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_init_def_sw_recp (struct ice_hw*) ;

__attribute__((used)) static enum ice_status ice_init_fltr_mgmt_struct(struct ice_hw *hw)
{
 struct ice_switch_info *sw;

 hw->switch_info = devm_kzalloc(ice_hw_to_dev(hw),
           sizeof(*hw->switch_info), GFP_KERNEL);
 sw = hw->switch_info;

 if (!sw)
  return ICE_ERR_NO_MEMORY;

 INIT_LIST_HEAD(&sw->vsi_list_map_head);

 return ice_init_def_sw_recp(hw);
}
