
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1e_hw {int dummy; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_READ_REGW (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int REG_PCIE_CAP_LIST ;
 int REG_SPI_FLASH_CTRL ;
 int SPI_FLASH_CTRL_EN_VPD ;

int atl1e_check_eeprom_exist(struct atl1e_hw *hw)
{
 u32 value;

 value = AT_READ_REG(hw, REG_SPI_FLASH_CTRL);
 if (value & SPI_FLASH_CTRL_EN_VPD) {
  value &= ~SPI_FLASH_CTRL_EN_VPD;
  AT_WRITE_REG(hw, REG_SPI_FLASH_CTRL, value);
 }
 value = AT_READ_REGW(hw, REG_PCIE_CAP_LIST);
 return ((value & 0xFF00) == 0x6C00) ? 0 : 1;
}
