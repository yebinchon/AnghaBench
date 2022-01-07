
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxic_nand_ctlr {int complete; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int INT_RDY_PIN ;
 scalar_t__ INT_STS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t mxic_nfc_isr(int irq, void *dev_id)
{
 struct mxic_nand_ctlr *nfc = dev_id;
 u32 sts;

 sts = readl(nfc->regs + INT_STS);
 if (sts & INT_RDY_PIN)
  complete(&nfc->complete);
 else
  return IRQ_NONE;

 return IRQ_HANDLED;
}
