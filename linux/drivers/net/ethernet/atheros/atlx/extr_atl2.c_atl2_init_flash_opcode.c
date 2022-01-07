
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct atl2_hw {size_t flash_vendor; } ;
struct TYPE_3__ {int cmdREAD; int cmdWRSR; int cmdRDSR; int cmdWREN; int cmdRDID; int cmdCHIP_ERASE; int cmdSECTOR_ERASE; int cmdPROGRAM; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int ATL2_WRITE_REGB (struct atl2_hw*,int ,int ) ;
 int REG_SPI_FLASH_OP_CHIP_ERASE ;
 int REG_SPI_FLASH_OP_PROGRAM ;
 int REG_SPI_FLASH_OP_RDID ;
 int REG_SPI_FLASH_OP_RDSR ;
 int REG_SPI_FLASH_OP_READ ;
 int REG_SPI_FLASH_OP_SC_ERASE ;
 int REG_SPI_FLASH_OP_WREN ;
 int REG_SPI_FLASH_OP_WRSR ;
 TYPE_1__* flash_table ;

__attribute__((used)) static void atl2_init_flash_opcode(struct atl2_hw *hw)
{
 if (hw->flash_vendor >= ARRAY_SIZE(flash_table))
  hw->flash_vendor = 0;


 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_PROGRAM,
  flash_table[hw->flash_vendor].cmdPROGRAM);
 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_SC_ERASE,
  flash_table[hw->flash_vendor].cmdSECTOR_ERASE);
 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_CHIP_ERASE,
  flash_table[hw->flash_vendor].cmdCHIP_ERASE);
 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_RDID,
  flash_table[hw->flash_vendor].cmdRDID);
 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_WREN,
  flash_table[hw->flash_vendor].cmdWREN);
 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_RDSR,
  flash_table[hw->flash_vendor].cmdRDSR);
 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_WRSR,
  flash_table[hw->flash_vendor].cmdWRSR);
 ATL2_WRITE_REGB(hw, REG_SPI_FLASH_OP_READ,
  flash_table[hw->flash_vendor].cmdREAD);
}
