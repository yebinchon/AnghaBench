
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_GSSR ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_get_eeprom_semaphore (struct ixgbe_hw*) ;
 int ixgbe_release_eeprom_semaphore (struct ixgbe_hw*) ;

void ixgbe_release_swfw_sync(struct ixgbe_hw *hw, u32 mask)
{
 u32 gssr;
 u32 swmask = mask;

 ixgbe_get_eeprom_semaphore(hw);

 gssr = IXGBE_READ_REG(hw, IXGBE_GSSR);
 gssr &= ~swmask;
 IXGBE_WRITE_REG(hw, IXGBE_GSSR, gssr);

 ixgbe_release_eeprom_semaphore(hw);
}
