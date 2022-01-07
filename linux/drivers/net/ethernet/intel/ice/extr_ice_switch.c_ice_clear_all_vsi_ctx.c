
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ice_hw {int dummy; } ;


 scalar_t__ ICE_MAX_VSI ;
 int ice_clear_vsi_ctx (struct ice_hw*,scalar_t__) ;

void ice_clear_all_vsi_ctx(struct ice_hw *hw)
{
 u16 i;

 for (i = 0; i < ICE_MAX_VSI; i++)
  ice_clear_vsi_ctx(hw, i);
}
