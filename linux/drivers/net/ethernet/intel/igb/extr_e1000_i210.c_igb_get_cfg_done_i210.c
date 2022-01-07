
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_EEMNGCTL_I210 ;
 int E1000_NVM_CFG_DONE_PORT_0 ;
 scalar_t__ PHY_CFG_TIMEOUT ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;

s32 igb_get_cfg_done_i210(struct e1000_hw *hw)
{
 s32 timeout = PHY_CFG_TIMEOUT;
 u32 mask = E1000_NVM_CFG_DONE_PORT_0;

 while (timeout) {
  if (rd32(E1000_EEMNGCTL_I210) & mask)
   break;
  usleep_range(1000, 2000);
  timeout--;
 }
 if (!timeout)
  hw_dbg("MNG configuration cycle has not completed.\n");

 return 0;
}
