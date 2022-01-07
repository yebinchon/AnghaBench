
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SWFW_REGSMP ;
 int IXGBE_SWFW_SYNC (struct ixgbe_hw*) ;
 int IXGBE_SWSM (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_SWSM_SMBI ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_release_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw)
{
 u32 timeout = 2000;
 u32 i;
 u32 swsm;


 for (i = 0; i < timeout; i++) {



  swsm = IXGBE_READ_REG(hw, IXGBE_SWSM(hw));
  if (!(swsm & IXGBE_SWSM_SMBI))
   break;
  usleep_range(50, 100);
 }

 if (i == timeout) {
  hw_dbg(hw,
         "Software semaphore SMBI between device drivers not granted.\n");
  return IXGBE_ERR_EEPROM;
 }


 for (i = 0; i < timeout; i++) {
  swsm = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC(hw));
  if (!(swsm & IXGBE_SWFW_REGSMP))
   return 0;

  usleep_range(50, 100);
 }




 hw_dbg(hw, "REGSMP Software NVM semaphore not granted\n");
 ixgbe_release_swfw_sync_semaphore(hw);
 return IXGBE_ERR_EEPROM;
}
