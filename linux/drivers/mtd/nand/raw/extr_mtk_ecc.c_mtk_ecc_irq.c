
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_ecc {int sectors; int done; TYPE_1__* caps; scalar_t__ regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__* ecc_regs; } ;


 size_t ECC_DECDONE ;
 size_t ECC_DECIRQ_STA ;
 size_t ECC_ENCIRQ_STA ;
 int ECC_IRQ_EN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int readw (scalar_t__) ;

__attribute__((used)) static irqreturn_t mtk_ecc_irq(int irq, void *id)
{
 struct mtk_ecc *ecc = id;
 u32 dec, enc;

 dec = readw(ecc->regs + ecc->caps->ecc_regs[ECC_DECIRQ_STA])
      & ECC_IRQ_EN;
 if (dec) {
  dec = readw(ecc->regs + ecc->caps->ecc_regs[ECC_DECDONE]);
  if (dec & ecc->sectors) {




   readw(ecc->regs + ecc->caps->ecc_regs[ECC_DECIRQ_STA]);
   ecc->sectors = 0;
   complete(&ecc->done);
  } else {
   return IRQ_HANDLED;
  }
 } else {
  enc = readl(ecc->regs + ecc->caps->ecc_regs[ECC_ENCIRQ_STA])
        & ECC_IRQ_EN;
  if (enc)
   complete(&ecc->done);
  else
   return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
