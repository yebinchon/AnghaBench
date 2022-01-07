
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ksz_hw {int dummy; } ;


 int AT93C_READ ;
 int EEPROM_ACCESS_ENABLE ;
 int EEPROM_CHIP_SELECT ;
 int drop_gpio (struct ksz_hw*,int) ;
 int raise_gpio (struct ksz_hw*,int) ;
 int spi_r (struct ksz_hw*) ;
 int spi_reg (struct ksz_hw*,int ,int ) ;

__attribute__((used)) static u16 eeprom_read(struct ksz_hw *hw, u8 reg)
{
 u16 data;

 raise_gpio(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);

 spi_reg(hw, AT93C_READ, reg);
 data = spi_r(hw);

 drop_gpio(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);

 return data;
}
