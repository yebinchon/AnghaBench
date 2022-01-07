
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_nand_ctlr {scalar_t__ regs; } ;


 scalar_t__ HC_CFG ;
 int HC_CFG_MAN_CS_ASSERT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxic_nfc_cs_disable(struct mxic_nand_ctlr *nfc)
{
 writel(~HC_CFG_MAN_CS_ASSERT & readl(nfc->regs + HC_CFG),
        nfc->regs + HC_CFG);
}
