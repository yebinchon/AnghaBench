
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_eeprom_info {scalar_t__ type; int word_size; int opcode_bits; int address_bits; int delay_usec; int page_size; } ;
struct e1000_hw {int mac_type; struct e1000_eeprom_info eeprom; } ;
typedef scalar_t__ s32 ;


 int E1000_EECD_ADDR_BITS ;
 int E1000_EECD_SIZE ;
 int E1000_EECD_TYPE ;
 scalar_t__ E1000_SUCCESS ;
 int EECD ;
 int EEPROM_CFG ;
 int EEPROM_SIZE_MASK ;
 int EEPROM_SIZE_SHIFT ;
 int EEPROM_WORD_SIZE_SHIFT ;
 void* e1000_eeprom_microwire ;
 scalar_t__ e1000_eeprom_spi ;
 scalar_t__ e1000_read_eeprom (struct e1000_hw*,int ,int,int*) ;
 int er32 (int ) ;

s32 e1000_init_eeprom_params(struct e1000_hw *hw)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 u32 eecd = er32(EECD);
 s32 ret_val = E1000_SUCCESS;
 u16 eeprom_size;

 switch (hw->mac_type) {
 case 137:
 case 136:
 case 135:
 case 134:
  eeprom->type = e1000_eeprom_microwire;
  eeprom->word_size = 64;
  eeprom->opcode_bits = 3;
  eeprom->address_bits = 6;
  eeprom->delay_usec = 50;
  break;
 case 140:
 case 133:
 case 132:
 case 131:
 case 130:
  eeprom->type = e1000_eeprom_microwire;
  eeprom->opcode_bits = 3;
  eeprom->delay_usec = 50;
  if (eecd & E1000_EECD_SIZE) {
   eeprom->word_size = 256;
   eeprom->address_bits = 8;
  } else {
   eeprom->word_size = 64;
   eeprom->address_bits = 6;
  }
  break;
 case 139:
 case 138:
 case 129:
 case 128:
  if (eecd & E1000_EECD_TYPE) {
   eeprom->type = e1000_eeprom_spi;
   eeprom->opcode_bits = 8;
   eeprom->delay_usec = 1;
   if (eecd & E1000_EECD_ADDR_BITS) {
    eeprom->page_size = 32;
    eeprom->address_bits = 16;
   } else {
    eeprom->page_size = 8;
    eeprom->address_bits = 8;
   }
  } else {
   eeprom->type = e1000_eeprom_microwire;
   eeprom->opcode_bits = 3;
   eeprom->delay_usec = 50;
   if (eecd & E1000_EECD_ADDR_BITS) {
    eeprom->word_size = 256;
    eeprom->address_bits = 8;
   } else {
    eeprom->word_size = 64;
    eeprom->address_bits = 6;
   }
  }
  break;
 default:
  break;
 }

 if (eeprom->type == e1000_eeprom_spi) {




  eeprom->word_size = 64;
  ret_val = e1000_read_eeprom(hw, EEPROM_CFG, 1, &eeprom_size);
  if (ret_val)
   return ret_val;
  eeprom_size =
      (eeprom_size & EEPROM_SIZE_MASK) >> EEPROM_SIZE_SHIFT;




  if (eeprom_size)
   eeprom_size++;

  eeprom->word_size = 1 << (eeprom_size + EEPROM_WORD_SIZE_SHIFT);
 }
 return ret_val;
}
