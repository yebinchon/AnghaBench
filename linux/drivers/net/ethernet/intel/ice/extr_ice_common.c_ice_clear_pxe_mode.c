
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int adminq; } ;


 int ice_aq_clear_pxe_mode (struct ice_hw*) ;
 scalar_t__ ice_check_sq_alive (struct ice_hw*,int *) ;

void ice_clear_pxe_mode(struct ice_hw *hw)
{
 if (ice_check_sq_alive(hw, &hw->adminq))
  ice_aq_clear_pxe_mode(hw);
}
