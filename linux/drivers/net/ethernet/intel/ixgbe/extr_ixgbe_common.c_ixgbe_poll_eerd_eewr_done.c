
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 scalar_t__ IXGBE_EEPROM_RW_REG_DONE ;
 int IXGBE_EERD ;
 scalar_t__ IXGBE_EERD_EEWR_ATTEMPTS ;
 int IXGBE_EEWR ;
 int IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_NVM_POLL_READ ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, u32 ee_reg)
{
 u32 i;
 u32 reg;

 for (i = 0; i < IXGBE_EERD_EEWR_ATTEMPTS; i++) {
  if (ee_reg == IXGBE_NVM_POLL_READ)
   reg = IXGBE_READ_REG(hw, IXGBE_EERD);
  else
   reg = IXGBE_READ_REG(hw, IXGBE_EEWR);

  if (reg & IXGBE_EEPROM_RW_REG_DONE) {
   return 0;
  }
  udelay(5);
 }
 return IXGBE_ERR_EEPROM;
}
