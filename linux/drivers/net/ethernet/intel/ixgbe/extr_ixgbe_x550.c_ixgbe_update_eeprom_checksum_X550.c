
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_EEPROM_CHECKSUM ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_calc_eeprom_checksum_X550 (struct ixgbe_hw*) ;
 int ixgbe_read_ee_hostif_X550 (struct ixgbe_hw*,int ,scalar_t__*) ;
 int ixgbe_update_flash_X550 (struct ixgbe_hw*) ;
 int ixgbe_write_ee_hostif_X550 (struct ixgbe_hw*,int ,scalar_t__) ;

__attribute__((used)) static s32 ixgbe_update_eeprom_checksum_X550(struct ixgbe_hw *hw)
{
 s32 status;
 u16 checksum = 0;





 status = ixgbe_read_ee_hostif_X550(hw, 0, &checksum);
 if (status) {
  hw_dbg(hw, "EEPROM read failed\n");
  return status;
 }

 status = ixgbe_calc_eeprom_checksum_X550(hw);
 if (status < 0)
  return status;

 checksum = (u16)(status & 0xffff);

 status = ixgbe_write_ee_hostif_X550(hw, IXGBE_EEPROM_CHECKSUM,
         checksum);
 if (status)
  return status;

 status = ixgbe_update_flash_X550(hw);

 return status;
}
