
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_eeprom_info {scalar_t__ word_size; scalar_t__ type; int address_bits; int opcode_bits; } ;
struct e1000_hw {scalar_t__ mac_type; struct e1000_eeprom_info eeprom; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_EEPROM ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ EEPROM_A8_OPCODE_SPI ;
 scalar_t__ EEPROM_READ_OPCODE_MICROWIRE ;
 scalar_t__ EEPROM_READ_OPCODE_SPI ;
 int GBE_CONFIG_BASE_VIRT ;
 int GBE_CONFIG_FLASH_READ (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int cond_resched () ;
 scalar_t__ e1000_acquire_eeprom (struct e1000_hw*) ;
 scalar_t__ e1000_ce4100 ;
 scalar_t__ e1000_eeprom_microwire ;
 scalar_t__ e1000_eeprom_spi ;
 int e1000_release_eeprom (struct e1000_hw*) ;
 scalar_t__ e1000_shift_in_ee_bits (struct e1000_hw*,int) ;
 int e1000_shift_out_ee_bits (struct e1000_hw*,scalar_t__,int) ;
 scalar_t__ e1000_spi_eeprom_ready (struct e1000_hw*) ;
 int e1000_standby_eeprom (struct e1000_hw*) ;
 int e_dbg (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static s32 e1000_do_read_eeprom(struct e1000_hw *hw, u16 offset, u16 words,
    u16 *data)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 u32 i = 0;

 if (hw->mac_type == e1000_ce4100) {
  GBE_CONFIG_FLASH_READ(GBE_CONFIG_BASE_VIRT, offset, words,
          data);
  return E1000_SUCCESS;
 }




 if ((offset >= eeprom->word_size) ||
     (words > eeprom->word_size - offset) ||
     (words == 0)) {
  e_dbg("\"words\" parameter out of bounds. Words = %d,"
        "size = %d\n", offset, eeprom->word_size);
  return -E1000_ERR_EEPROM;
 }






 if (e1000_acquire_eeprom(hw) != E1000_SUCCESS)
  return -E1000_ERR_EEPROM;




 if (eeprom->type == e1000_eeprom_spi) {
  u16 word_in;
  u8 read_opcode = EEPROM_READ_OPCODE_SPI;

  if (e1000_spi_eeprom_ready(hw)) {
   e1000_release_eeprom(hw);
   return -E1000_ERR_EEPROM;
  }

  e1000_standby_eeprom(hw);




  if ((eeprom->address_bits == 8) && (offset >= 128))
   read_opcode |= EEPROM_A8_OPCODE_SPI;


  e1000_shift_out_ee_bits(hw, read_opcode, eeprom->opcode_bits);
  e1000_shift_out_ee_bits(hw, (u16)(offset * 2),
     eeprom->address_bits);
  for (i = 0; i < words; i++) {
   word_in = e1000_shift_in_ee_bits(hw, 16);
   data[i] = (word_in >> 8) | (word_in << 8);
  }
 } else if (eeprom->type == e1000_eeprom_microwire) {
  for (i = 0; i < words; i++) {

   e1000_shift_out_ee_bits(hw,
      EEPROM_READ_OPCODE_MICROWIRE,
      eeprom->opcode_bits);
   e1000_shift_out_ee_bits(hw, (u16)(offset + i),
      eeprom->address_bits);




   data[i] = e1000_shift_in_ee_bits(hw, 16);
   e1000_standby_eeprom(hw);
   cond_resched();
  }
 }


 e1000_release_eeprom(hw);

 return E1000_SUCCESS;
}
