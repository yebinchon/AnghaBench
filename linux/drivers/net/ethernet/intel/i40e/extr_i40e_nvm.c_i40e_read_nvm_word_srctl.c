
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ sr_size; } ;
struct i40e_hw {TYPE_1__ nvm; } ;
typedef scalar_t__ i40e_status ;


 int BIT (int ) ;
 int I40E_DEBUG_NVM ;
 scalar_t__ I40E_ERR_PARAM ;
 scalar_t__ I40E_ERR_TIMEOUT ;
 int I40E_GLNVM_SRCTL ;
 int I40E_GLNVM_SRCTL_ADDR_SHIFT ;
 int I40E_GLNVM_SRCTL_START_SHIFT ;
 int I40E_GLNVM_SRDATA ;
 int I40E_GLNVM_SRDATA_RDDATA_MASK ;
 int I40E_GLNVM_SRDATA_RDDATA_SHIFT ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__,...) ;
 scalar_t__ i40e_poll_sr_srctl_done_bit (struct i40e_hw*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static i40e_status i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
         u16 *data)
{
 i40e_status ret_code = I40E_ERR_TIMEOUT;
 u32 sr_reg;

 if (offset >= hw->nvm.sr_size) {
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM read error: offset %d beyond Shadow RAM limit %d\n",
      offset, hw->nvm.sr_size);
  ret_code = I40E_ERR_PARAM;
  goto read_nvm_exit;
 }


 ret_code = i40e_poll_sr_srctl_done_bit(hw);
 if (!ret_code) {

  sr_reg = ((u32)offset << I40E_GLNVM_SRCTL_ADDR_SHIFT) |
    BIT(I40E_GLNVM_SRCTL_START_SHIFT);
  wr32(hw, I40E_GLNVM_SRCTL, sr_reg);


  ret_code = i40e_poll_sr_srctl_done_bit(hw);
  if (!ret_code) {
   sr_reg = rd32(hw, I40E_GLNVM_SRDATA);
   *data = (u16)((sr_reg &
           I40E_GLNVM_SRDATA_RDDATA_MASK)
        >> I40E_GLNVM_SRDATA_RDDATA_SHIFT);
  }
 }
 if (ret_code)
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM read error: Couldn't access Shadow RAM address: 0x%x\n",
      offset);

read_nvm_exit:
 return ret_code;
}
