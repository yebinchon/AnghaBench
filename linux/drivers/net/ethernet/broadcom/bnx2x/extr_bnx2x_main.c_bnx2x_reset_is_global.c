
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_GLOBAL_RESET_BIT ;
 int BNX2X_RECOVERY_GLOB_REG ;
 int DP (int ,char*,int) ;
 int NETIF_MSG_HW ;
 int REG_RD (struct bnx2x*,int ) ;

__attribute__((used)) static bool bnx2x_reset_is_global(struct bnx2x *bp)
{
 u32 val = REG_RD(bp, BNX2X_RECOVERY_GLOB_REG);

 DP(NETIF_MSG_HW, "GEN_REG_VAL=0x%08x\n", val);
 return (val & BNX2X_GLOBAL_RESET_BIT) ? 1 : 0;
}
