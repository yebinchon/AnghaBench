
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ice_hw {int pkg_size; int * pkg_copy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_ERR_PARAM ;
 int devm_kfree (int ,int *) ;
 int * devm_kmemdup (int ,int const*,int ,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_init_pkg (struct ice_hw*,int *,int ) ;

enum ice_status ice_copy_and_init_pkg(struct ice_hw *hw, const u8 *buf, u32 len)
{
 enum ice_status status;
 u8 *buf_copy;

 if (!buf || !len)
  return ICE_ERR_PARAM;

 buf_copy = devm_kmemdup(ice_hw_to_dev(hw), buf, len, GFP_KERNEL);

 status = ice_init_pkg(hw, buf_copy, len);
 if (status) {

  devm_kfree(ice_hw_to_dev(hw), buf_copy);
 } else {

  hw->pkg_copy = buf_copy;
  hw->pkg_size = len;
 }

 return status;
}
