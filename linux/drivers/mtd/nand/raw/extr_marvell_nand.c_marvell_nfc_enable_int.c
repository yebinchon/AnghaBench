
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct marvell_nfc {scalar_t__ regs; } ;


 scalar_t__ NDCR ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void marvell_nfc_enable_int(struct marvell_nfc *nfc, u32 int_mask)
{
 u32 reg;


 reg = readl_relaxed(nfc->regs + NDCR);
 writel_relaxed(reg & ~int_mask, nfc->regs + NDCR);
}
