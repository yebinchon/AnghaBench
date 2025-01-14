
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_INVM_VALUE_NOT_FOUND ;
 scalar_t__ E1000_INVM_CSR_AUTOLOAD_DATA_SIZE_IN_DWORDS ;
 scalar_t__ E1000_INVM_CSR_AUTOLOAD_STRUCTURE ;
 int E1000_INVM_DATA_REG (scalar_t__) ;
 scalar_t__ E1000_INVM_RSA_KEY_SHA256_DATA_SIZE_IN_DWORDS ;
 scalar_t__ E1000_INVM_RSA_KEY_SHA256_STRUCTURE ;
 scalar_t__ E1000_INVM_SIZE ;
 scalar_t__ E1000_INVM_UNINITIALIZED_STRUCTURE ;
 scalar_t__ E1000_INVM_WORD_AUTOLOAD_STRUCTURE ;
 scalar_t__ INVM_DWORD_TO_RECORD_TYPE (int ) ;
 scalar_t__ INVM_DWORD_TO_WORD_ADDRESS (int ) ;
 scalar_t__ INVM_DWORD_TO_WORD_DATA (int ) ;
 int hw_dbg (char*,scalar_t__,...) ;
 int rd32 (int ) ;

__attribute__((used)) static s32 igb_read_invm_word_i210(struct e1000_hw *hw, u8 address, u16 *data)
{
 s32 status = -E1000_ERR_INVM_VALUE_NOT_FOUND;
 u32 invm_dword;
 u16 i;
 u8 record_type, word_address;

 for (i = 0; i < E1000_INVM_SIZE; i++) {
  invm_dword = rd32(E1000_INVM_DATA_REG(i));

  record_type = INVM_DWORD_TO_RECORD_TYPE(invm_dword);
  if (record_type == E1000_INVM_UNINITIALIZED_STRUCTURE)
   break;
  if (record_type == E1000_INVM_CSR_AUTOLOAD_STRUCTURE)
   i += E1000_INVM_CSR_AUTOLOAD_DATA_SIZE_IN_DWORDS;
  if (record_type == E1000_INVM_RSA_KEY_SHA256_STRUCTURE)
   i += E1000_INVM_RSA_KEY_SHA256_DATA_SIZE_IN_DWORDS;
  if (record_type == E1000_INVM_WORD_AUTOLOAD_STRUCTURE) {
   word_address = INVM_DWORD_TO_WORD_ADDRESS(invm_dword);
   if (word_address == address) {
    *data = INVM_DWORD_TO_WORD_DATA(invm_dword);
    hw_dbg("Read INVM Word 0x%02x = %x\n",
       address, *data);
    status = 0;
    break;
   }
  }
 }
 if (status)
  hw_dbg("Requested word 0x%02x not found in OTP\n", address);
 return status;
}
