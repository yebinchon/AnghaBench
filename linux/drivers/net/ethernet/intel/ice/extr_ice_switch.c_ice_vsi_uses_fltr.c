
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ fltr_act; scalar_t__ vsi_handle; } ;
struct ice_fltr_mgmt_list_entry {TYPE_2__* vsi_list_info; TYPE_1__ fltr_info; } ;
struct TYPE_4__ {int vsi_map; } ;


 scalar_t__ ICE_FWD_TO_VSI ;
 scalar_t__ ICE_FWD_TO_VSI_LIST ;
 scalar_t__ test_bit (scalar_t__,int ) ;

__attribute__((used)) static bool
ice_vsi_uses_fltr(struct ice_fltr_mgmt_list_entry *fm_entry, u16 vsi_handle)
{
 return ((fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI &&
   fm_entry->fltr_info.vsi_handle == vsi_handle) ||
  (fm_entry->fltr_info.fltr_act == ICE_FWD_TO_VSI_LIST &&
   (test_bit(vsi_handle, fm_entry->vsi_list_info->vsi_map))));
}
