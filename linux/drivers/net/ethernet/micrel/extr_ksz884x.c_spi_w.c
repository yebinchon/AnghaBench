
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_hw {int dummy; } ;


 int EEPROM_DATA_OUT ;
 int drop_gpio (struct ksz_hw*,int ) ;
 int eeprom_clk (struct ksz_hw*) ;
 int raise_gpio (struct ksz_hw*,int ) ;

__attribute__((used)) static void spi_w(struct ksz_hw *hw, u16 data)
{
 int i;

 for (i = 15; i >= 0; i--) {
  (data & (0x01 << i)) ? raise_gpio(hw, EEPROM_DATA_OUT) :
   drop_gpio(hw, EEPROM_DATA_OUT);
  eeprom_clk(hw);
 }
}
