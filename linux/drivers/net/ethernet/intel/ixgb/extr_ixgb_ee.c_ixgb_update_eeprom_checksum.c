
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ixgb_hw {int dummy; } ;


 scalar_t__ EEPROM_CHECKSUM_REG ;
 scalar_t__ EEPROM_SUM ;
 scalar_t__ ixgb_read_eeprom (struct ixgb_hw*,scalar_t__) ;
 int ixgb_write_eeprom (struct ixgb_hw*,scalar_t__,scalar_t__) ;

void
ixgb_update_eeprom_checksum(struct ixgb_hw *hw)
{
 u16 checksum = 0;
 u16 i;

 for (i = 0; i < EEPROM_CHECKSUM_REG; i++)
  checksum += ixgb_read_eeprom(hw, i);

 checksum = (u16) EEPROM_SUM - checksum;

 ixgb_write_eeprom(hw, EEPROM_CHECKSUM_REG, checksum);
}
