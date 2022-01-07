
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_nvm_info {int flash_bank_size; } ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int E1000_EECD_SEC1VAL ;
 int E1000_EECD_SEC1VAL_VALID_MASK ;
 int E1000_ERR_NVM ;
 int E1000_ICH_NVM_SIG_VALUE ;
 int E1000_ICH_NVM_SIG_WORD ;
 int E1000_ICH_NVM_VALID_SIG_MASK ;
 int EECD ;




 int e1000_read_flash_byte_ich8lan (struct e1000_hw*,int,int*) ;
 int e1000_read_flash_dword_ich8lan (struct e1000_hw*,int,int*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
{
 u32 eecd;
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 bank1_offset = nvm->flash_bank_size * sizeof(u16);
 u32 act_offset = E1000_ICH_NVM_SIG_WORD * 2 + 1;
 u32 nvm_dword = 0;
 u8 sig_byte = 0;
 s32 ret_val;

 switch (hw->mac.type) {
 case 128:
 case 129:
  bank1_offset = nvm->flash_bank_size;
  act_offset = E1000_ICH_NVM_SIG_WORD;


  *bank = 0;


  ret_val = e1000_read_flash_dword_ich8lan(hw, act_offset,
        &nvm_dword);
  if (ret_val)
   return ret_val;
  sig_byte = (u8)((nvm_dword & 0xFF00) >> 8);
  if ((sig_byte & E1000_ICH_NVM_VALID_SIG_MASK) ==
      E1000_ICH_NVM_SIG_VALUE) {
   *bank = 0;
   return 0;
  }


  ret_val = e1000_read_flash_dword_ich8lan(hw, act_offset +
        bank1_offset,
        &nvm_dword);
  if (ret_val)
   return ret_val;
  sig_byte = (u8)((nvm_dword & 0xFF00) >> 8);
  if ((sig_byte & E1000_ICH_NVM_VALID_SIG_MASK) ==
      E1000_ICH_NVM_SIG_VALUE) {
   *bank = 1;
   return 0;
  }

  e_dbg("ERROR: No valid NVM bank present\n");
  return -E1000_ERR_NVM;
 case 131:
 case 130:
  eecd = er32(EECD);
  if ((eecd & E1000_EECD_SEC1VAL_VALID_MASK) ==
      E1000_EECD_SEC1VAL_VALID_MASK) {
   if (eecd & E1000_EECD_SEC1VAL)
    *bank = 1;
   else
    *bank = 0;

   return 0;
  }
  e_dbg("Unable to determine valid NVM bank via EEC - reading flash signature\n");

 default:

  *bank = 0;


  ret_val = e1000_read_flash_byte_ich8lan(hw, act_offset,
       &sig_byte);
  if (ret_val)
   return ret_val;
  if ((sig_byte & E1000_ICH_NVM_VALID_SIG_MASK) ==
      E1000_ICH_NVM_SIG_VALUE) {
   *bank = 0;
   return 0;
  }


  ret_val = e1000_read_flash_byte_ich8lan(hw, act_offset +
       bank1_offset,
       &sig_byte);
  if (ret_val)
   return ret_val;
  if ((sig_byte & E1000_ICH_NVM_VALID_SIG_MASK) ==
      E1000_ICH_NVM_SIG_VALUE) {
   *bank = 1;
   return 0;
  }

  e_dbg("ERROR: No valid NVM bank present\n");
  return -E1000_ERR_NVM;
 }
}
