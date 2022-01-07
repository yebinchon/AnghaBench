
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct igc_nvm_info {scalar_t__ word_size; } ;
struct igc_hw {struct igc_nvm_info nvm; } ;
typedef int s32 ;


 int IGC_ERR_NVM ;
 scalar_t__ IGC_NVM_RW_ADDR_SHIFT ;
 scalar_t__ IGC_NVM_RW_REG_DATA ;
 int IGC_NVM_RW_REG_DONE ;
 scalar_t__ IGC_NVM_RW_REG_START ;
 int IGC_SRWR ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,scalar_t__) ;

__attribute__((used)) static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
         u16 *data)
{
 struct igc_nvm_info *nvm = &hw->nvm;
 u32 attempts = 100000;
 u32 i, k, eewr = 0;
 s32 ret_val = 0;




 if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
     words == 0) {
  hw_dbg("nvm parameter(s) out of bounds\n");
  ret_val = -IGC_ERR_NVM;
  goto out;
 }

 for (i = 0; i < words; i++) {
  eewr = ((offset + i) << IGC_NVM_RW_ADDR_SHIFT) |
   (data[i] << IGC_NVM_RW_REG_DATA) |
   IGC_NVM_RW_REG_START;

  wr32(IGC_SRWR, eewr);

  for (k = 0; k < attempts; k++) {
   if (IGC_NVM_RW_REG_DONE &
       rd32(IGC_SRWR)) {
    ret_val = 0;
    break;
   }
   udelay(5);
  }

  if (ret_val) {
   hw_dbg("Shadow RAM write EEWR timed out\n");
   break;
  }
 }

out:
 return ret_val;
}
