
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int CFC_REG_WEAK_ENABLE_PF ;
 int DP (int ,char*,int ) ;
 int IGU_REG_PCI_PF_MSIX_EN ;
 int IGU_REG_PCI_PF_MSIX_FUNC_MASK ;
 int IGU_REG_PCI_PF_MSI_EN ;
 int PBF_REG_DISABLE_PF ;
 int PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR ;
 int REG_RD (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_hw_enable_status(struct bnx2x *bp)
{
 u32 val;

 val = REG_RD(bp, CFC_REG_WEAK_ENABLE_PF);
 DP(BNX2X_MSG_SP, "CFC_REG_WEAK_ENABLE_PF is 0x%x\n", val);

 val = REG_RD(bp, PBF_REG_DISABLE_PF);
 DP(BNX2X_MSG_SP, "PBF_REG_DISABLE_PF is 0x%x\n", val);

 val = REG_RD(bp, IGU_REG_PCI_PF_MSI_EN);
 DP(BNX2X_MSG_SP, "IGU_REG_PCI_PF_MSI_EN is 0x%x\n", val);

 val = REG_RD(bp, IGU_REG_PCI_PF_MSIX_EN);
 DP(BNX2X_MSG_SP, "IGU_REG_PCI_PF_MSIX_EN is 0x%x\n", val);

 val = REG_RD(bp, IGU_REG_PCI_PF_MSIX_FUNC_MASK);
 DP(BNX2X_MSG_SP, "IGU_REG_PCI_PF_MSIX_FUNC_MASK is 0x%x\n", val);

 val = REG_RD(bp, PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR);
 DP(BNX2X_MSG_SP, "PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR is 0x%x\n", val);

 val = REG_RD(bp, PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR);
 DP(BNX2X_MSG_SP, "PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR is 0x%x\n", val);

 val = REG_RD(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER);
 DP(BNX2X_MSG_SP, "PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER is 0x%x\n",
    val);
}
