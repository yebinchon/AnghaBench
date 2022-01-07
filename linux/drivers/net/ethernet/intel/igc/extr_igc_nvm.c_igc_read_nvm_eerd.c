
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct igc_nvm_info {scalar_t__ word_size; } ;
struct igc_hw {struct igc_nvm_info nvm; } ;
typedef int s32 ;


 int IGC_EERD ;
 int IGC_ERR_NVM ;
 int IGC_NVM_POLL_READ ;
 scalar_t__ IGC_NVM_RW_ADDR_SHIFT ;
 scalar_t__ IGC_NVM_RW_REG_DATA ;
 scalar_t__ IGC_NVM_RW_REG_START ;
 int hw_dbg (char*) ;
 int igc_poll_eerd_eewr_done (struct igc_hw*,int ) ;
 scalar_t__ rd32 (int ) ;
 int wr32 (int ,scalar_t__) ;

s32 igc_read_nvm_eerd(struct igc_hw *hw, u16 offset, u16 words, u16 *data)
{
 struct igc_nvm_info *nvm = &hw->nvm;
 u32 i, eerd = 0;
 s32 ret_val = 0;




 if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
     words == 0) {
  hw_dbg("nvm parameter(s) out of bounds\n");
  ret_val = -IGC_ERR_NVM;
  goto out;
 }

 for (i = 0; i < words; i++) {
  eerd = ((offset + i) << IGC_NVM_RW_ADDR_SHIFT) +
   IGC_NVM_RW_REG_START;

  wr32(IGC_EERD, eerd);
  ret_val = igc_poll_eerd_eewr_done(hw, IGC_NVM_POLL_READ);
  if (ret_val)
   break;

  data[i] = (rd32(IGC_EERD) >> IGC_NVM_RW_REG_DATA);
 }

out:
 return ret_val;
}
