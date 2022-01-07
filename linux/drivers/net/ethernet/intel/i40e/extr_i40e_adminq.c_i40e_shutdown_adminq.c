
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ va; } ;
struct i40e_hw {TYPE_1__ nvm_buff; } ;
typedef int i40e_status ;


 int i40e_aq_queue_shutdown (struct i40e_hw*,int) ;
 scalar_t__ i40e_check_asq_alive (struct i40e_hw*) ;
 int i40e_free_virt_mem (struct i40e_hw*,TYPE_1__*) ;
 int i40e_shutdown_arq (struct i40e_hw*) ;
 int i40e_shutdown_asq (struct i40e_hw*) ;

i40e_status i40e_shutdown_adminq(struct i40e_hw *hw)
{
 i40e_status ret_code = 0;

 if (i40e_check_asq_alive(hw))
  i40e_aq_queue_shutdown(hw, 1);

 i40e_shutdown_asq(hw);
 i40e_shutdown_arq(hw);

 if (hw->nvm_buff.va)
  i40e_free_virt_mem(hw, &hw->nvm_buff);

 return ret_code;
}
