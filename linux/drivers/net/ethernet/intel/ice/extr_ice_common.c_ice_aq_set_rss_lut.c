
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_PARAM ;
 int __ice_aq_get_set_rss_lut (struct ice_hw*,int ,int ,int *,int ,int ,int) ;
 int ice_get_hw_vsi_num (struct ice_hw*,int ) ;
 int ice_is_vsi_valid (struct ice_hw*,int ) ;

enum ice_status
ice_aq_set_rss_lut(struct ice_hw *hw, u16 vsi_handle, u8 lut_type,
     u8 *lut, u16 lut_size)
{
 if (!ice_is_vsi_valid(hw, vsi_handle) || !lut)
  return ICE_ERR_PARAM;

 return __ice_aq_get_set_rss_lut(hw, ice_get_hw_vsi_num(hw, vsi_handle),
     lut_type, lut, lut_size, 0, 1);
}
