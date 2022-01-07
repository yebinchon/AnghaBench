
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 scalar_t__ IXGBE_EEPROM_MAX_RETRY_SPI ;
 int IXGBE_EEPROM_OPCODE_BITS ;
 int IXGBE_EEPROM_RDSR_OPCODE_SPI ;
 int IXGBE_EEPROM_STATUS_RDY_SPI ;
 int IXGBE_ERR_EEPROM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_shift_in_eeprom_bits (struct ixgbe_hw*,int) ;
 int ixgbe_shift_out_eeprom_bits (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_standby_eeprom (struct ixgbe_hw*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_ready_eeprom(struct ixgbe_hw *hw)
{
 u16 i;
 u8 spi_stat_reg;







 for (i = 0; i < IXGBE_EEPROM_MAX_RETRY_SPI; i += 5) {
  ixgbe_shift_out_eeprom_bits(hw, IXGBE_EEPROM_RDSR_OPCODE_SPI,
         IXGBE_EEPROM_OPCODE_BITS);
  spi_stat_reg = (u8)ixgbe_shift_in_eeprom_bits(hw, 8);
  if (!(spi_stat_reg & IXGBE_EEPROM_STATUS_RDY_SPI))
   break;

  udelay(5);
  ixgbe_standby_eeprom(hw);
 }





 if (i >= IXGBE_EEPROM_MAX_RETRY_SPI) {
  hw_dbg(hw, "SPI EEPROM Status error\n");
  return IXGBE_ERR_EEPROM;
 }

 return 0;
}
