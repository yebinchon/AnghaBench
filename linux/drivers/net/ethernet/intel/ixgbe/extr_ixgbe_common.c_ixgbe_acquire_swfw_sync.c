
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_get_eeprom_semaphore (struct ixgbe_hw*) ;
 int ixgbe_release_eeprom_semaphore (struct ixgbe_hw*) ;
 int ixgbe_release_swfw_sync (struct ixgbe_hw*,int) ;
 int usleep_range (int,int) ;

s32 ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, u32 mask)
{
 u32 gssr = 0;
 u32 swmask = mask;
 u32 fwmask = mask << 5;
 u32 timeout = 200;
 u32 i;

 for (i = 0; i < timeout; i++) {




  if (ixgbe_get_eeprom_semaphore(hw))
   return IXGBE_ERR_SWFW_SYNC;

  gssr = IXGBE_READ_REG(hw, IXGBE_GSSR);
  if (!(gssr & (fwmask | swmask))) {
   gssr |= swmask;
   IXGBE_WRITE_REG(hw, IXGBE_GSSR, gssr);
   ixgbe_release_eeprom_semaphore(hw);
   return 0;
  } else {

   ixgbe_release_eeprom_semaphore(hw);
   usleep_range(5000, 10000);
  }
 }


 if (gssr & (fwmask | swmask))
  ixgbe_release_swfw_sync(hw, gssr & (fwmask | swmask));

 usleep_range(5000, 10000);
 return IXGBE_ERR_SWFW_SYNC;
}
