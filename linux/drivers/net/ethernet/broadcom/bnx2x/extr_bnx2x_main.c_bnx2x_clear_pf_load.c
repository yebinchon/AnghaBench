
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int pf_num; } ;


 int BNX2X_PATH0_LOAD_CNT_MASK ;
 int BNX2X_PATH0_LOAD_CNT_SHIFT ;
 int BNX2X_PATH1_LOAD_CNT_MASK ;
 int BNX2X_PATH1_LOAD_CNT_SHIFT ;
 int BNX2X_RECOVERY_GLOB_REG ;
 scalar_t__ BP_PATH (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 int HW_LOCK_RESOURCE_RECOVERY_REG ;
 int NETIF_MSG_IFDOWN ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;

bool bnx2x_clear_pf_load(struct bnx2x *bp)
{
 u32 val1, val;
 u32 mask = BP_PATH(bp) ? BNX2X_PATH1_LOAD_CNT_MASK :
        BNX2X_PATH0_LOAD_CNT_MASK;
 u32 shift = BP_PATH(bp) ? BNX2X_PATH1_LOAD_CNT_SHIFT :
        BNX2X_PATH0_LOAD_CNT_SHIFT;

 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
 val = REG_RD(bp, BNX2X_RECOVERY_GLOB_REG);
 DP(NETIF_MSG_IFDOWN, "Old GEN_REG_VAL=0x%08x\n", val);


 val1 = (val & mask) >> shift;


 val1 &= ~(1 << bp->pf_num);


 val &= ~mask;


 val |= ((val1 << shift) & mask);

 REG_WR(bp, BNX2X_RECOVERY_GLOB_REG, val);
 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
 return val1 != 0;
}
