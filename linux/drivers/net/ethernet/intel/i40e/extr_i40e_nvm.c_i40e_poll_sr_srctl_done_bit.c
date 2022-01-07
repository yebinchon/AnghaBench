
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
typedef scalar_t__ i40e_status ;


 int I40E_DEBUG_NVM ;
 scalar_t__ I40E_ERR_TIMEOUT ;
 int I40E_GLNVM_SRCTL ;
 scalar_t__ I40E_GLNVM_SRCTL_DONE_MASK ;
 scalar_t__ I40E_SRRD_SRCTL_ATTEMPTS ;
 int i40e_debug (struct i40e_hw*,int ,char*) ;
 scalar_t__ rd32 (struct i40e_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static i40e_status i40e_poll_sr_srctl_done_bit(struct i40e_hw *hw)
{
 i40e_status ret_code = I40E_ERR_TIMEOUT;
 u32 srctl, wait_cnt;


 for (wait_cnt = 0; wait_cnt < I40E_SRRD_SRCTL_ATTEMPTS; wait_cnt++) {
  srctl = rd32(hw, I40E_GLNVM_SRCTL);
  if (srctl & I40E_GLNVM_SRCTL_DONE_MASK) {
   ret_code = 0;
   break;
  }
  udelay(5);
 }
 if (ret_code == I40E_ERR_TIMEOUT)
  i40e_debug(hw, I40E_DEBUG_NVM, "Done bit in GLNVM_SRCTL not set");
 return ret_code;
}
