
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_nvm_info {scalar_t__ word_size; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NVM ;
 int E1000_NVM_POLL_WRITE ;
 scalar_t__ E1000_NVM_RW_ADDR_SHIFT ;
 scalar_t__ E1000_NVM_RW_REG_DATA ;
 scalar_t__ E1000_NVM_RW_REG_START ;
 int EEWR ;
 scalar_t__ e1000e_poll_eerd_eewr_done (struct e1000_hw*,int ) ;
 int e_dbg (char*) ;
 int ew32 (int ,scalar_t__) ;

__attribute__((used)) static s32 e1000_write_nvm_eewr_82571(struct e1000_hw *hw, u16 offset,
          u16 words, u16 *data)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 i, eewr = 0;
 s32 ret_val = 0;




 if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
     (words == 0)) {
  e_dbg("nvm parameter(s) out of bounds\n");
  return -E1000_ERR_NVM;
 }

 for (i = 0; i < words; i++) {
  eewr = ((data[i] << E1000_NVM_RW_REG_DATA) |
   ((offset + i) << E1000_NVM_RW_ADDR_SHIFT) |
   E1000_NVM_RW_REG_START);

  ret_val = e1000e_poll_eerd_eewr_done(hw, E1000_NVM_POLL_WRITE);
  if (ret_val)
   break;

  ew32(EEWR, eewr);

  ret_val = e1000e_poll_eerd_eewr_done(hw, E1000_NVM_POLL_WRITE);
  if (ret_val)
   break;
 }

 return ret_val;
}
