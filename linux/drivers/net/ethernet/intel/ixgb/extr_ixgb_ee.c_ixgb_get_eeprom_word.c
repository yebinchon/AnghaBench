
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ixgb_hw {int * eeprom; } ;
typedef int __le16 ;


 size_t IXGB_EEPROM_SIZE ;
 scalar_t__ ixgb_check_and_get_eeprom_data (struct ixgb_hw*) ;

__le16
ixgb_get_eeprom_word(struct ixgb_hw *hw, u16 index)
{

 if (index < IXGB_EEPROM_SIZE && ixgb_check_and_get_eeprom_data(hw))
  return hw->eeprom[index];

 return 0;
}
