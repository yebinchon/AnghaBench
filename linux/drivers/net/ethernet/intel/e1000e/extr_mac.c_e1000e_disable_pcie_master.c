
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_GIO_MASTER_DISABLE ;
 scalar_t__ E1000_ERR_MASTER_REQUESTS_PENDING ;
 int E1000_STATUS_GIO_MASTER_ENABLE ;
 scalar_t__ MASTER_DISABLE_TIMEOUT ;
 int STATUS ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

s32 e1000e_disable_pcie_master(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 timeout = MASTER_DISABLE_TIMEOUT;

 ctrl = er32(CTRL);
 ctrl |= E1000_CTRL_GIO_MASTER_DISABLE;
 ew32(CTRL, ctrl);

 while (timeout) {
  if (!(er32(STATUS) & E1000_STATUS_GIO_MASTER_ENABLE))
   break;
  usleep_range(100, 200);
  timeout--;
 }

 if (!timeout) {
  e_dbg("Master requests are pending.\n");
  return -E1000_ERR_MASTER_REQUESTS_PENDING;
 }

 return 0;
}
