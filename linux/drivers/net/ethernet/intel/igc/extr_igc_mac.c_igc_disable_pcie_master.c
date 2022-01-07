
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int IGC_CTRL ;
 int IGC_CTRL_GIO_MASTER_DISABLE ;
 scalar_t__ IGC_ERR_MASTER_REQUESTS_PENDING ;
 int IGC_STATUS ;
 int IGC_STATUS_GIO_MASTER_ENABLE ;
 scalar_t__ MASTER_DISABLE_TIMEOUT ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;

s32 igc_disable_pcie_master(struct igc_hw *hw)
{
 s32 timeout = MASTER_DISABLE_TIMEOUT;
 s32 ret_val = 0;
 u32 ctrl;

 ctrl = rd32(IGC_CTRL);
 ctrl |= IGC_CTRL_GIO_MASTER_DISABLE;
 wr32(IGC_CTRL, ctrl);

 while (timeout) {
  if (!(rd32(IGC_STATUS) &
      IGC_STATUS_GIO_MASTER_ENABLE))
   break;
  usleep_range(2000, 3000);
  timeout--;
 }

 if (!timeout) {
  hw_dbg("Master requests are pending.\n");
  ret_val = -IGC_ERR_MASTER_REQUESTS_PENDING;
  goto out;
 }

out:
 return ret_val;
}
