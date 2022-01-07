
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ blank_nvm_mode; } ;
struct ice_hw {TYPE_1__ nvm; } ;


 int ICE_NVM_RES_ID ;
 int ice_release_res (struct ice_hw*,int ) ;

__attribute__((used)) static void ice_release_nvm(struct ice_hw *hw)
{
 if (hw->nvm.blank_nvm_mode)
  return;

 ice_release_res(hw, ICE_NVM_RES_ID);
}
