
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_hw {int dummy; } ;


 int EEPROM_DATA_OUT ;
 int drop_gpio (struct ksz_hw*,int ) ;
 int eeprom_clk (struct ksz_hw*) ;
 int raise_gpio (struct ksz_hw*,int ) ;

__attribute__((used)) static void spi_reg(struct ksz_hw *hw, u8 data, u8 reg)
{
 int i;


 raise_gpio(hw, EEPROM_DATA_OUT);
 eeprom_clk(hw);


 for (i = 1; i >= 0; i--) {
  (data & (0x01 << i)) ? raise_gpio(hw, EEPROM_DATA_OUT) :
   drop_gpio(hw, EEPROM_DATA_OUT);
  eeprom_clk(hw);
 }


 for (i = 5; i >= 0; i--) {
  (reg & (0x01 << i)) ? raise_gpio(hw, EEPROM_DATA_OUT) :
   drop_gpio(hw, EEPROM_DATA_OUT);
  eeprom_clk(hw);
 }
}
