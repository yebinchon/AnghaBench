
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgb_hw {int dummy; } ;


 int EEPROM_READ_OPCODE ;
 int ixgb_setup_eeprom (struct ixgb_hw*) ;
 int ixgb_shift_in_bits (struct ixgb_hw*) ;
 int ixgb_shift_out_bits (struct ixgb_hw*,int ,int) ;
 int ixgb_standby_eeprom (struct ixgb_hw*) ;

u16
ixgb_read_eeprom(struct ixgb_hw *hw,
    u16 offset)
{
 u16 data;


 ixgb_setup_eeprom(hw);


 ixgb_shift_out_bits(hw, EEPROM_READ_OPCODE, 3);



 ixgb_shift_out_bits(hw, offset, 6);


 data = ixgb_shift_in_bits(hw);


 ixgb_standby_eeprom(hw);

 return data;
}
