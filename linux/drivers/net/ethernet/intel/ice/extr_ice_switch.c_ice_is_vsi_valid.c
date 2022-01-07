
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ice_hw {scalar_t__* vsi_ctx; } ;


 size_t ICE_MAX_VSI ;

bool ice_is_vsi_valid(struct ice_hw *hw, u16 vsi_handle)
{
 return vsi_handle < ICE_MAX_VSI && hw->vsi_ctx[vsi_handle];
}
