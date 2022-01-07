
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int dummy; } ;
typedef scalar_t__ i40e_status ;


 int I40E_HMC_LAN_TX ;
 scalar_t__ i40e_clear_hmc_context (struct i40e_hw*,int *,int ) ;
 scalar_t__ i40e_hmc_get_object_va (struct i40e_hw*,int **,int ,int ) ;

i40e_status i40e_clear_lan_tx_queue_context(struct i40e_hw *hw,
            u16 queue)
{
 i40e_status err;
 u8 *context_bytes;

 err = i40e_hmc_get_object_va(hw, &context_bytes,
         I40E_HMC_LAN_TX, queue);
 if (err < 0)
  return err;

 return i40e_clear_hmc_context(hw, context_bytes, I40E_HMC_LAN_TX);
}
