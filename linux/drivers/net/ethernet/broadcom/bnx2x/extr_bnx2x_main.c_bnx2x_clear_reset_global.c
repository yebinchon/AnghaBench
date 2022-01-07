
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_GLOBAL_RESET_BIT ;
 int BNX2X_RECOVERY_GLOB_REG ;
 int HW_LOCK_RESOURCE_RECOVERY_REG ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_clear_reset_global(struct bnx2x *bp)
{
 u32 val;
 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
 val = REG_RD(bp, BNX2X_RECOVERY_GLOB_REG);
 REG_WR(bp, BNX2X_RECOVERY_GLOB_REG, val & (~BNX2X_GLOBAL_RESET_BIT));
 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
}
