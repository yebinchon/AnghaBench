
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 int BP_PORT (struct bnx2x*) ;
 scalar_t__ BRB1_REG_PORT_NUM_OCC_BLOCKS_0 ;
 int DP (int ,char*,scalar_t__) ;
 scalar_t__ MISC_REG_AEU_MASK_ATTN_FUNC_0 ;
 int NETIF_MSG_IFDOWN ;
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK ;
 scalar_t__ NIG_REG_LLH0_BRB1_NOT_MCP ;
 scalar_t__ NIG_REG_LLH1_BRB1_NOT_MCP ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 scalar_t__ REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int bnx2x__link_reset (struct bnx2x*) ;
 int msleep (int) ;

__attribute__((used)) static void bnx2x_reset_port(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 u32 val;


 bnx2x__link_reset(bp);

 REG_WR(bp, NIG_REG_MASK_INTERRUPT_PORT0 + port*4, 0);


 REG_WR(bp, NIG_REG_LLH0_BRB1_DRV_MASK + port*4, 0x0);

 REG_WR(bp, (port ? NIG_REG_LLH1_BRB1_NOT_MCP :
      NIG_REG_LLH0_BRB1_NOT_MCP), 0x0);


 REG_WR(bp, MISC_REG_AEU_MASK_ATTN_FUNC_0 + port*4, 0);

 msleep(100);

 val = REG_RD(bp, BRB1_REG_PORT_NUM_OCC_BLOCKS_0 + port*4);
 if (val)
  DP(NETIF_MSG_IFDOWN,
     "BRB1 is not empty  %d blocks are occupied\n", val);


}
