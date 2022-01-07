
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct list_head {int dummy; } ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {int hw_vsi_id; } ;
struct ice_fltr_info {TYPE_1__ fwd_id; int vsi_handle; int fltr_act; } ;
struct ice_fltr_list_entry {int list_entry; struct ice_fltr_info fltr_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_FWD_TO_VSI ;
 struct ice_fltr_list_entry* devm_kzalloc (int ,int,int ) ;
 int ice_get_hw_vsi_num (struct ice_hw*,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static enum ice_status
ice_add_entry_to_vsi_fltr_list(struct ice_hw *hw, u16 vsi_handle,
          struct list_head *vsi_list_head,
          struct ice_fltr_info *fi)
{
 struct ice_fltr_list_entry *tmp;




 tmp = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return ICE_ERR_NO_MEMORY;

 tmp->fltr_info = *fi;






 tmp->fltr_info.fltr_act = ICE_FWD_TO_VSI;
 tmp->fltr_info.vsi_handle = vsi_handle;
 tmp->fltr_info.fwd_id.hw_vsi_id = ice_get_hw_vsi_num(hw, vsi_handle);

 list_add(&tmp->list_entry, vsi_list_head);

 return 0;
}
