
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct e1000_nvm_info {scalar_t__ word_size; int opcode_bits; int address_bits; scalar_t__ page_size; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;
 scalar_t__ NVM_A8_OPCODE_SPI ;
 scalar_t__ NVM_WREN_OPCODE_SPI ;
 scalar_t__ NVM_WRITE_OPCODE_SPI ;
 int hw_dbg (char*) ;
 int igb_ready_nvm_eeprom (struct e1000_hw*) ;
 int igb_shift_out_eec_bits (struct e1000_hw*,scalar_t__,int) ;
 int igb_standby_nvm (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

s32 igb_write_nvm_spi(struct e1000_hw *hw, u16 offset, u16 words, u16 *data)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 s32 ret_val = -E1000_ERR_NVM;
 u16 widx = 0;




 if ((offset >= nvm->word_size) || (words > (nvm->word_size - offset)) ||
     (words == 0)) {
  hw_dbg("nvm parameter(s) out of bounds\n");
  return ret_val;
 }

 while (widx < words) {
  u8 write_opcode = NVM_WRITE_OPCODE_SPI;

  ret_val = nvm->ops.acquire(hw);
  if (ret_val)
   return ret_val;

  ret_val = igb_ready_nvm_eeprom(hw);
  if (ret_val) {
   nvm->ops.release(hw);
   return ret_val;
  }

  igb_standby_nvm(hw);


  igb_shift_out_eec_bits(hw, NVM_WREN_OPCODE_SPI,
      nvm->opcode_bits);

  igb_standby_nvm(hw);




  if ((nvm->address_bits == 8) && (offset >= 128))
   write_opcode |= NVM_A8_OPCODE_SPI;


  igb_shift_out_eec_bits(hw, write_opcode, nvm->opcode_bits);
  igb_shift_out_eec_bits(hw, (u16)((offset + widx) * 2),
      nvm->address_bits);


  while (widx < words) {
   u16 word_out = data[widx];

   word_out = (word_out >> 8) | (word_out << 8);
   igb_shift_out_eec_bits(hw, word_out, 16);
   widx++;

   if ((((offset + widx) * 2) % nvm->page_size) == 0) {
    igb_standby_nvm(hw);
    break;
   }
  }
  usleep_range(1000, 2000);
  nvm->ops.release(hw);
 }

 return ret_val;
}
