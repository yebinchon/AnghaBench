
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int BNX2X_NVRAM_TIMEOUT_COUNT ;
 int BP_PORT (struct bnx2x*) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int DP (int,char*) ;
 int EBUSY ;
 int HW_LOCK_RESOURCE_NVRAM ;
 int MCPR_NVM_SW_ARB_ARB_ARB1 ;
 int MCPR_NVM_SW_ARB_ARB_REQ_SET1 ;
 int MCP_REG_MCPR_NVM_SW_ARB ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_acquire_nvram_lock(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 int count, i;
 u32 val;


 bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_NVRAM);


 count = BNX2X_NVRAM_TIMEOUT_COUNT;
 if (CHIP_REV_IS_SLOW(bp))
  count *= 100;


 REG_WR(bp, MCP_REG_MCPR_NVM_SW_ARB,
        (MCPR_NVM_SW_ARB_ARB_REQ_SET1 << port));

 for (i = 0; i < count*10; i++) {
  val = REG_RD(bp, MCP_REG_MCPR_NVM_SW_ARB);
  if (val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port))
   break;

  udelay(5);
 }

 if (!(val & (MCPR_NVM_SW_ARB_ARB_ARB1 << port))) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "cannot get access to nvram interface\n");
  bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_NVRAM);
  return -EBUSY;
 }

 return 0;
}
