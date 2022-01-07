
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int dummy; } ;


 int AT_HW_MAX_IDLE_DELAY ;
 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int REG_IDLE_STATUS ;
 int msleep (int) ;

__attribute__((used)) static u32 atl1c_wait_until_idle(struct atl1c_hw *hw, u32 modu_ctrl)
{
 int timeout;
 u32 data;

 for (timeout = 0; timeout < AT_HW_MAX_IDLE_DELAY; timeout++) {
  AT_READ_REG(hw, REG_IDLE_STATUS, &data);
  if ((data & modu_ctrl) == 0)
   return 0;
  msleep(1);
 }
 return data;
}
