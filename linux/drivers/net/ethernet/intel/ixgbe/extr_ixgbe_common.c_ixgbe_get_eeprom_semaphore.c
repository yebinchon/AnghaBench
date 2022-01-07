
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SWSM (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_SWSM_SMBI ;
 scalar_t__ IXGBE_SWSM_SWESMBI ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int ixgbe_release_eeprom_semaphore (struct ixgbe_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw)
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
  hw_dbg(hw, "Driver can't access the Eeprom - SMBI Semaphore not granted.\n");





  ixgbe_release_eeprom_semaphore(hw);

  usleep_range(50, 100);




  swsm = IXGBE_READ_REG(hw, IXGBE_SWSM(hw));
  if (swsm & IXGBE_SWSM_SMBI) {
   hw_dbg(hw, "Software semaphore SMBI between device drivers not granted.\n");
   return IXGBE_ERR_EEPROM;
  }
 }


 for (i = 0; i < timeout; i++) {
  swsm = IXGBE_READ_REG(hw, IXGBE_SWSM(hw));


  swsm |= IXGBE_SWSM_SWESMBI;
  IXGBE_WRITE_REG(hw, IXGBE_SWSM(hw), swsm);




  swsm = IXGBE_READ_REG(hw, IXGBE_SWSM(hw));
  if (swsm & IXGBE_SWSM_SWESMBI)
   break;

  usleep_range(50, 100);
 }




 if (i >= timeout) {
  hw_dbg(hw, "SWESMBI Software EEPROM semaphore not granted.\n");
  ixgbe_release_eeprom_semaphore(hw);
  return IXGBE_ERR_EEPROM;
 }

 return 0;
}
