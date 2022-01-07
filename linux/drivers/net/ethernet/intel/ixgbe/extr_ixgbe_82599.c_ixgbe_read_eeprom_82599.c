
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ixgbe_eeprom_info {scalar_t__ type; } ;
struct ixgbe_hw {struct ixgbe_eeprom_info eeprom; } ;
typedef int s32 ;


 scalar_t__ IXGBE_EERD_MAX_ADDR ;
 scalar_t__ ixgbe_eeprom_spi ;
 int ixgbe_read_eeprom_bit_bang_generic (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;
 int ixgbe_read_eerd_generic (struct ixgbe_hw*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static s32 ixgbe_read_eeprom_82599(struct ixgbe_hw *hw,
       u16 offset, u16 *data)
{
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;





 if (eeprom->type == ixgbe_eeprom_spi && offset <= IXGBE_EERD_MAX_ADDR)
  return ixgbe_read_eerd_generic(hw, offset, data);

 return ixgbe_read_eeprom_bit_bang_generic(hw, offset, data);
}
