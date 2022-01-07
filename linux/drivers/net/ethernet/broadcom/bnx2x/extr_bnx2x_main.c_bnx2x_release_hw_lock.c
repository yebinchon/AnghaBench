
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int,int) ;
 int BP_FUNC (struct bnx2x*) ;
 int EFAULT ;
 int EINVAL ;
 int HW_LOCK_MAX_RESOURCE_VALUE ;
 int MISC_REG_DRIVER_CONTROL_1 ;
 int MISC_REG_DRIVER_CONTROL_7 ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;

int bnx2x_release_hw_lock(struct bnx2x *bp, u32 resource)
{
 u32 lock_status;
 u32 resource_bit = (1 << resource);
 int func = BP_FUNC(bp);
 u32 hw_lock_control_reg;


 if (resource > HW_LOCK_MAX_RESOURCE_VALUE) {
  BNX2X_ERR("resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\n",
     resource, HW_LOCK_MAX_RESOURCE_VALUE);
  return -EINVAL;
 }

 if (func <= 5) {
  hw_lock_control_reg = (MISC_REG_DRIVER_CONTROL_1 + func*8);
 } else {
  hw_lock_control_reg =
    (MISC_REG_DRIVER_CONTROL_7 + (func - 6)*8);
 }


 lock_status = REG_RD(bp, hw_lock_control_reg);
 if (!(lock_status & resource_bit)) {
  BNX2X_ERR("lock_status 0x%x resource_bit 0x%x. Unlock was called but lock wasn't taken!\n",
     lock_status, resource_bit);
  return -EFAULT;
 }

 REG_WR(bp, hw_lock_control_reg, resource_bit);
 return 0;
}
