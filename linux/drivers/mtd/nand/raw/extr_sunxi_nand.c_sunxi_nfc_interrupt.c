
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_nfc {scalar_t__ regs; int complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NFC_INT_MASK ;
 scalar_t__ NFC_REG_INT ;
 scalar_t__ NFC_REG_ST ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sunxi_nfc_interrupt(int irq, void *dev_id)
{
 struct sunxi_nfc *nfc = dev_id;
 u32 st = readl(nfc->regs + NFC_REG_ST);
 u32 ien = readl(nfc->regs + NFC_REG_INT);

 if (!(ien & st))
  return IRQ_NONE;

 if ((ien & st) == ien)
  complete(&nfc->complete);

 writel(st & NFC_INT_MASK, nfc->regs + NFC_REG_ST);
 writel(~st & ien & NFC_INT_MASK, nfc->regs + NFC_REG_INT);

 return IRQ_HANDLED;
}
