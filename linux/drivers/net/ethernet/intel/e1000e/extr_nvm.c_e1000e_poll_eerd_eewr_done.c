
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_ERR_NVM ;
 int E1000_NVM_POLL_READ ;
 scalar_t__ E1000_NVM_RW_REG_DONE ;
 int EERD ;
 int EEWR ;
 scalar_t__ er32 (int ) ;
 int udelay (int) ;

s32 e1000e_poll_eerd_eewr_done(struct e1000_hw *hw, int ee_reg)
{
 u32 attempts = 100000;
 u32 i, reg = 0;

 for (i = 0; i < attempts; i++) {
  if (ee_reg == E1000_NVM_POLL_READ)
   reg = er32(EERD);
  else
   reg = er32(EEWR);

  if (reg & E1000_NVM_RW_REG_DONE)
   return 0;

  udelay(5);
 }

 return -E1000_ERR_NVM;
}
