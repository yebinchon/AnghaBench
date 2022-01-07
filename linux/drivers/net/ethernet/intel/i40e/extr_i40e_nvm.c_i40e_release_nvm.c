
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ asq_cmd_timeout; } ;
struct TYPE_3__ {scalar_t__ blank_nvm_mode; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ nvm; } ;
typedef scalar_t__ i40e_status ;


 scalar_t__ I40E_ERR_ADMIN_QUEUE_TIMEOUT ;
 int I40E_NVM_RESOURCE_ID ;
 scalar_t__ I40E_SUCCESS ;
 scalar_t__ i40e_aq_release_resource (struct i40e_hw*,int ,int ,int *) ;
 int usleep_range (int,int) ;

void i40e_release_nvm(struct i40e_hw *hw)
{
 i40e_status ret_code = I40E_SUCCESS;
 u32 total_delay = 0;

 if (hw->nvm.blank_nvm_mode)
  return;

 ret_code = i40e_aq_release_resource(hw, I40E_NVM_RESOURCE_ID, 0, ((void*)0));




 while ((ret_code == I40E_ERR_ADMIN_QUEUE_TIMEOUT) &&
        (total_delay < hw->aq.asq_cmd_timeout)) {
  usleep_range(1000, 2000);
  ret_code = i40e_aq_release_resource(hw,
          I40E_NVM_RESOURCE_ID,
          0, ((void*)0));
  total_delay++;
 }
}
