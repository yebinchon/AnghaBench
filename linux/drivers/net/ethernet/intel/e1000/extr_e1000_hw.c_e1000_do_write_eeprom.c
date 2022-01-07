
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_eeprom_info {scalar_t__ word_size; scalar_t__ type; } ;
struct e1000_hw {scalar_t__ mac_type; struct e1000_eeprom_info eeprom; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_EEPROM ;
 scalar_t__ E1000_SUCCESS ;
 int GBE_CONFIG_BASE_VIRT ;
 int GBE_CONFIG_FLASH_WRITE (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ e1000_acquire_eeprom (struct e1000_hw*) ;
 scalar_t__ e1000_ce4100 ;
 scalar_t__ e1000_eeprom_microwire ;
 int e1000_release_eeprom (struct e1000_hw*) ;
 scalar_t__ e1000_write_eeprom_microwire (struct e1000_hw*,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ e1000_write_eeprom_spi (struct e1000_hw*,scalar_t__,scalar_t__,scalar_t__*) ;
 int e_dbg (char*) ;
 int msleep (int) ;

__attribute__((used)) static s32 e1000_do_write_eeprom(struct e1000_hw *hw, u16 offset, u16 words,
     u16 *data)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 s32 status = 0;

 if (hw->mac_type == e1000_ce4100) {
  GBE_CONFIG_FLASH_WRITE(GBE_CONFIG_BASE_VIRT, offset, words,
           data);
  return E1000_SUCCESS;
 }




 if ((offset >= eeprom->word_size) ||
     (words > eeprom->word_size - offset) ||
     (words == 0)) {
  e_dbg("\"words\" parameter out of bounds\n");
  return -E1000_ERR_EEPROM;
 }


 if (e1000_acquire_eeprom(hw) != E1000_SUCCESS)
  return -E1000_ERR_EEPROM;

 if (eeprom->type == e1000_eeprom_microwire) {
  status = e1000_write_eeprom_microwire(hw, offset, words, data);
 } else {
  status = e1000_write_eeprom_spi(hw, offset, words, data);
  msleep(10);
 }


 e1000_release_eeprom(hw);

 return status;
}
