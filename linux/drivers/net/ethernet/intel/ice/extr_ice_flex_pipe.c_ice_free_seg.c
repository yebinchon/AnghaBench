
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int * seg; scalar_t__ pkg_size; int * pkg_copy; } ;


 int devm_kfree (int ,int *) ;
 int ice_hw_to_dev (struct ice_hw*) ;

void ice_free_seg(struct ice_hw *hw)
{
 if (hw->pkg_copy) {
  devm_kfree(ice_hw_to_dev(hw), hw->pkg_copy);
  hw->pkg_copy = ((void*)0);
  hw->pkg_size = 0;
 }
 hw->seg = ((void*)0);
}
