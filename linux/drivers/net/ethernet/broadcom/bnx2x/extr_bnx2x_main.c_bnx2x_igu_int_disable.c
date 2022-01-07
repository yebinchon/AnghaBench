
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int DP (int ,char*,int) ;
 int IGU_PF_CONF_ATTN_BIT_EN ;
 int IGU_PF_CONF_INT_LINE_EN ;
 int IGU_PF_CONF_MSI_MSIX_EN ;
 int IGU_REG_PF_CONFIGURATION ;
 int NETIF_MSG_IFDOWN ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_igu_int_disable(struct bnx2x *bp)
{
 u32 val = REG_RD(bp, IGU_REG_PF_CONFIGURATION);

 val &= ~(IGU_PF_CONF_MSI_MSIX_EN |
   IGU_PF_CONF_INT_LINE_EN |
   IGU_PF_CONF_ATTN_BIT_EN);

 DP(NETIF_MSG_IFDOWN, "write %x to IGU\n", val);

 REG_WR(bp, IGU_REG_PF_CONFIGURATION, val);
 if (REG_RD(bp, IGU_REG_PF_CONFIGURATION) != val)
  BNX2X_ERR("BUG! Proper val not read from IGU!\n");
}
