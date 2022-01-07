
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int word_size; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int IXGBE_EEPROM_CHECKSUM ;
 int IXGBE_EEPROM_LAST_WORD ;
 scalar_t__ IXGBE_EEPROM_SUM ;
 scalar_t__ IXGBE_ERR_PARAM ;
 int IXGBE_FW_PTR ;
 int IXGBE_IXGBE_PCIE_GENERAL_SIZE ;
 int IXGBE_OPTION_ROM_PTR ;
 int IXGBE_PCIE_ANALOG_PTR_X550 ;


 int IXGBE_PCIE_CONFIG_SIZE ;

 int IXGBE_PHY_PTR ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_checksum_ptr_x550 (struct ixgbe_hw*,int,int,int*,int*,int) ;
 scalar_t__ ixgbe_read_ee_hostif_buffer_X550 (struct ixgbe_hw*,int ,int,int*) ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
        u32 buffer_size)
{
 u16 eeprom_ptrs[IXGBE_EEPROM_LAST_WORD + 1];
 u16 *local_buffer;
 s32 status;
 u16 checksum = 0;
 u16 pointer, i, size;

 hw->eeprom.ops.init_params(hw);

 if (!buffer) {

  status = ixgbe_read_ee_hostif_buffer_X550(hw, 0,
      IXGBE_EEPROM_LAST_WORD + 1,
      eeprom_ptrs);
  if (status) {
   hw_dbg(hw, "Failed to read EEPROM image\n");
   return status;
  }
  local_buffer = eeprom_ptrs;
 } else {
  if (buffer_size < IXGBE_EEPROM_LAST_WORD)
   return IXGBE_ERR_PARAM;
  local_buffer = buffer;
 }




 for (i = 0; i <= IXGBE_EEPROM_LAST_WORD; i++)
  if (i != IXGBE_EEPROM_CHECKSUM)
   checksum += local_buffer[i];




 for (i = IXGBE_PCIE_ANALOG_PTR_X550; i < IXGBE_FW_PTR; i++) {
  if (i == IXGBE_PHY_PTR || i == IXGBE_OPTION_ROM_PTR)
   continue;

  pointer = local_buffer[i];


  if (pointer == 0xFFFF || pointer == 0 ||
      pointer >= hw->eeprom.word_size)
   continue;

  switch (i) {
  case 128:
   size = IXGBE_IXGBE_PCIE_GENERAL_SIZE;
   break;
  case 130:
  case 129:
   size = IXGBE_PCIE_CONFIG_SIZE;
   break;
  default:
   size = 0;
   break;
  }

  status = ixgbe_checksum_ptr_x550(hw, pointer, size, &checksum,
       buffer, buffer_size);
  if (status)
   return status;
 }

 checksum = (u16)IXGBE_EEPROM_SUM - checksum;

 return (s32)checksum;
}
