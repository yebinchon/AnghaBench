
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ice_vsi_ctx {int dummy; } ;
struct ice_hw {struct ice_vsi_ctx** vsi_ctx; } ;



__attribute__((used)) static void
ice_save_vsi_ctx(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi)
{
 hw->vsi_ctx[vsi_handle] = vsi;
}
