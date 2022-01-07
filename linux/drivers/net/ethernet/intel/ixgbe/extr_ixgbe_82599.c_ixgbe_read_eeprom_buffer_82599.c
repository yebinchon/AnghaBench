
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgbe_eeprom_info {scalar_t__ type; } ;
struct ixgbe_hw {struct ixgbe_eeprom_info eeprom; } ;
typedef int s32 ;


 int IXGBE_EERD_MAX_ADDR ;
 scalar_t__ ixgbe_eeprom_spi ;
 int ixgbe_read_eeprom_buffer_bit_bang_generic (struct ixgbe_hw*,int,int,int*) ;
 int ixgbe_read_eerd_buffer_generic (struct ixgbe_hw*,int,int,int*) ;

__attribute__((used)) static s32 ixgbe_read_eeprom_buffer_82599(struct ixgbe_hw *hw, u16 offset,
       u16 words, u16 *data)
{
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;




 if (eeprom->type == ixgbe_eeprom_spi &&
     offset + (words - 1) <= IXGBE_EERD_MAX_ADDR)
  return ixgbe_read_eerd_buffer_generic(hw, offset, words, data);

 return ixgbe_read_eeprom_buffer_bit_bang_generic(hw, offset, words,
        data);
}
