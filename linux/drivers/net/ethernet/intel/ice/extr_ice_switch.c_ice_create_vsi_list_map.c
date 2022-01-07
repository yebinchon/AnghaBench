
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_vsi_list_map_info {int vsi_list_id; int ref_cnt; int list_entry; int vsi_map; } ;
struct ice_switch_info {int vsi_list_map_head; } ;
struct ice_hw {struct ice_switch_info* switch_info; } ;


 int GFP_KERNEL ;
 struct ice_vsi_list_map_info* devm_kcalloc (int ,int,int,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int list_add (int *,int *) ;
 int set_bit (int,int ) ;

__attribute__((used)) static struct ice_vsi_list_map_info *
ice_create_vsi_list_map(struct ice_hw *hw, u16 *vsi_handle_arr, u16 num_vsi,
   u16 vsi_list_id)
{
 struct ice_switch_info *sw = hw->switch_info;
 struct ice_vsi_list_map_info *v_map;
 int i;

 v_map = devm_kcalloc(ice_hw_to_dev(hw), 1, sizeof(*v_map), GFP_KERNEL);
 if (!v_map)
  return ((void*)0);

 v_map->vsi_list_id = vsi_list_id;
 v_map->ref_cnt = 1;
 for (i = 0; i < num_vsi; i++)
  set_bit(vsi_handle_arr[i], v_map->vsi_map);

 list_add(&v_map->list_entry, &sw->vsi_list_map_head);
 return v_map;
}
