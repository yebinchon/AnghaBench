
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_hw {int dummy; } ;
struct ice_aqc_get_set_rss_keys {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_PARAM ;
 int __ice_aq_get_set_rss_key (struct ice_hw*,int ,struct ice_aqc_get_set_rss_keys*,int) ;
 int ice_get_hw_vsi_num (struct ice_hw*,int ) ;
 int ice_is_vsi_valid (struct ice_hw*,int ) ;

enum ice_status
ice_aq_set_rss_key(struct ice_hw *hw, u16 vsi_handle,
     struct ice_aqc_get_set_rss_keys *keys)
{
 if (!ice_is_vsi_valid(hw, vsi_handle) || !keys)
  return ICE_ERR_PARAM;

 return __ice_aq_get_set_rss_key(hw, ice_get_hw_vsi_num(hw, vsi_handle),
     keys, 1);
}
