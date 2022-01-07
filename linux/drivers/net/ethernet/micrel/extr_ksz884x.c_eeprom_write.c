
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ksz_hw {int dummy; } ;


 int AT93C_CODE ;
 int AT93C_ERASE ;
 int AT93C_WRITE ;
 int AT93C_WR_OFF ;
 int AT93C_WR_ON ;
 int EEPROM_ACCESS_ENABLE ;
 int EEPROM_CHIP_SELECT ;
 int EEPROM_DATA_IN ;
 int drop_gpio (struct ksz_hw*,int) ;
 int mdelay (int) ;
 int raise_gpio (struct ksz_hw*,int) ;
 int spi_reg (struct ksz_hw*,int ,int ) ;
 int spi_w (struct ksz_hw*,int ) ;
 int state_gpio (struct ksz_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void eeprom_write(struct ksz_hw *hw, u8 reg, u16 data)
{
 int timeout;

 raise_gpio(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);


 spi_reg(hw, AT93C_CODE, AT93C_WR_ON);
 drop_gpio(hw, EEPROM_CHIP_SELECT);
 udelay(1);


 raise_gpio(hw, EEPROM_CHIP_SELECT);
 spi_reg(hw, AT93C_ERASE, reg);
 drop_gpio(hw, EEPROM_CHIP_SELECT);
 udelay(1);


 raise_gpio(hw, EEPROM_CHIP_SELECT);
 timeout = 8;
 mdelay(2);
 do {
  mdelay(1);
 } while (!state_gpio(hw, EEPROM_DATA_IN) && --timeout);
 drop_gpio(hw, EEPROM_CHIP_SELECT);
 udelay(1);


 raise_gpio(hw, EEPROM_CHIP_SELECT);
 spi_reg(hw, AT93C_WRITE, reg);
 spi_w(hw, data);
 drop_gpio(hw, EEPROM_CHIP_SELECT);
 udelay(1);


 raise_gpio(hw, EEPROM_CHIP_SELECT);
 timeout = 8;
 mdelay(2);
 do {
  mdelay(1);
 } while (!state_gpio(hw, EEPROM_DATA_IN) && --timeout);
 drop_gpio(hw, EEPROM_CHIP_SELECT);
 udelay(1);


 raise_gpio(hw, EEPROM_CHIP_SELECT);
 spi_reg(hw, AT93C_CODE, AT93C_WR_OFF);

 drop_gpio(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);
}
