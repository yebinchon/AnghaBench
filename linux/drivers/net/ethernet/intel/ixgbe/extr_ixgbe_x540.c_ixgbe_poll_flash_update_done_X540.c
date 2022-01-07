
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_EEC (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_EEC_FLUDONE ;
 int IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_FLUDONE_ATTEMPTS ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw)
{
 u32 i;
 u32 reg;

 for (i = 0; i < IXGBE_FLUDONE_ATTEMPTS; i++) {
  reg = IXGBE_READ_REG(hw, IXGBE_EEC(hw));
  if (reg & IXGBE_EEC_FLUDONE)
   return 0;
  udelay(5);
 }
 return IXGBE_ERR_EEPROM;
}
