
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_nfc {int completion; scalar_t__ reg_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NFC_RB_IRQ_EN ;
 scalar_t__ NFC_REG_CFG ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t meson_nfc_irq(int irq, void *id)
{
 struct meson_nfc *nfc = id;
 u32 cfg;

 cfg = readl(nfc->reg_base + NFC_REG_CFG);
 if (!(cfg & NFC_RB_IRQ_EN))
  return IRQ_NONE;

 cfg &= ~(NFC_RB_IRQ_EN);
 writel(cfg, nfc->reg_base + NFC_REG_CFG);

 complete(&nfc->completion);
 return IRQ_HANDLED;
}
