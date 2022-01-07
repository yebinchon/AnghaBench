
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int opcode_bits; } ;
struct e1000_hw {TYPE_1__ eeprom; } ;
typedef int s32 ;


 int E1000_ERR_EEPROM ;
 int E1000_SUCCESS ;
 scalar_t__ EEPROM_MAX_RETRY_SPI ;
 int EEPROM_RDSR_OPCODE_SPI ;
 int EEPROM_STATUS_RDY_SPI ;
 scalar_t__ e1000_shift_in_ee_bits (struct e1000_hw*,int) ;
 int e1000_shift_out_ee_bits (struct e1000_hw*,int ,int ) ;
 int e1000_standby_eeprom (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_spi_eeprom_ready(struct e1000_hw *hw)
{
 u16 retry_count = 0;
 u8 spi_stat_reg;






 retry_count = 0;
 do {
  e1000_shift_out_ee_bits(hw, EEPROM_RDSR_OPCODE_SPI,
     hw->eeprom.opcode_bits);
  spi_stat_reg = (u8)e1000_shift_in_ee_bits(hw, 8);
  if (!(spi_stat_reg & EEPROM_STATUS_RDY_SPI))
   break;

  udelay(5);
  retry_count += 5;

  e1000_standby_eeprom(hw);
 } while (retry_count < EEPROM_MAX_RETRY_SPI);




 if (retry_count >= EEPROM_MAX_RETRY_SPI) {
  e_dbg("SPI EEPROM Status error\n");
  return -E1000_ERR_EEPROM;
 }

 return E1000_SUCCESS;
}
