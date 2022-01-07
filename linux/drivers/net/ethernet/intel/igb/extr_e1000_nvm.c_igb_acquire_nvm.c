
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_EECD ;
 int E1000_EECD_GNT ;
 int E1000_EECD_REQ ;
 scalar_t__ E1000_ERR_NVM ;
 scalar_t__ E1000_NVM_GRANT_ATTEMPTS ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,int) ;

s32 igb_acquire_nvm(struct e1000_hw *hw)
{
 u32 eecd = rd32(E1000_EECD);
 s32 timeout = E1000_NVM_GRANT_ATTEMPTS;
 s32 ret_val = 0;


 wr32(E1000_EECD, eecd | E1000_EECD_REQ);
 eecd = rd32(E1000_EECD);

 while (timeout) {
  if (eecd & E1000_EECD_GNT)
   break;
  udelay(5);
  eecd = rd32(E1000_EECD);
  timeout--;
 }

 if (!timeout) {
  eecd &= ~E1000_EECD_REQ;
  wr32(E1000_EECD, eecd);
  hw_dbg("Could not acquire NVM grant\n");
  ret_val = -E1000_ERR_NVM;
 }

 return ret_val;
}
