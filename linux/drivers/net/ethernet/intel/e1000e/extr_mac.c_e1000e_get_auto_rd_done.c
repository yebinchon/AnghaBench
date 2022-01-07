
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ AUTO_READ_DONE_TIMEOUT ;
 int E1000_EECD_AUTO_RD ;
 scalar_t__ E1000_ERR_RESET ;
 int EECD ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int usleep_range (int,int) ;

s32 e1000e_get_auto_rd_done(struct e1000_hw *hw)
{
 s32 i = 0;

 while (i < AUTO_READ_DONE_TIMEOUT) {
  if (er32(EECD) & E1000_EECD_AUTO_RD)
   break;
  usleep_range(1000, 2000);
  i++;
 }

 if (i == AUTO_READ_DONE_TIMEOUT) {
  e_dbg("Auto read by HW from NVM has not completed.\n");
  return -E1000_ERR_RESET;
 }

 return 0;
}
