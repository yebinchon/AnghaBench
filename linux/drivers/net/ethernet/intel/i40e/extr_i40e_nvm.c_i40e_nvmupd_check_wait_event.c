
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct i40e_hw {scalar_t__ nvm_wait_opcode; int nvm_aq_event_desc; } ;
struct i40e_aq_desc {int dummy; } ;


 int i40e_nvmupd_clear_wait_state (struct i40e_hw*) ;
 int memcpy (int *,struct i40e_aq_desc*,int) ;

void i40e_nvmupd_check_wait_event(struct i40e_hw *hw, u16 opcode,
      struct i40e_aq_desc *desc)
{
 u32 aq_desc_len = sizeof(struct i40e_aq_desc);

 if (opcode == hw->nvm_wait_opcode) {
  memcpy(&hw->nvm_aq_event_desc, desc, aq_desc_len);
  i40e_nvmupd_clear_wait_state(hw);
 }
}
