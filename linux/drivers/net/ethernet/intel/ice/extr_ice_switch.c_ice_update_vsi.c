
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_vsi_ctx {int vsi_num; } ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_PARAM ;
 int ice_aq_update_vsi (struct ice_hw*,struct ice_vsi_ctx*,struct ice_sq_cd*) ;
 int ice_get_hw_vsi_num (struct ice_hw*,int ) ;
 int ice_is_vsi_valid (struct ice_hw*,int ) ;

enum ice_status
ice_update_vsi(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
        struct ice_sq_cd *cd)
{
 if (!ice_is_vsi_valid(hw, vsi_handle))
  return ICE_ERR_PARAM;
 vsi_ctx->vsi_num = ice_get_hw_vsi_num(hw, vsi_handle);
 return ice_aq_update_vsi(hw, vsi_ctx, cd);
}
