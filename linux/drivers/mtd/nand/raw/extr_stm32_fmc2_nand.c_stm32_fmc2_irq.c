
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_fmc2_nfc {scalar_t__ irq_state; int complete; } ;
typedef int irqreturn_t ;


 scalar_t__ FMC2_IRQ_BCH ;
 scalar_t__ FMC2_IRQ_SEQ ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int stm32_fmc2_disable_bch_irq (struct stm32_fmc2_nfc*) ;
 int stm32_fmc2_disable_seq_irq (struct stm32_fmc2_nfc*) ;

__attribute__((used)) static irqreturn_t stm32_fmc2_irq(int irq, void *dev_id)
{
 struct stm32_fmc2_nfc *fmc2 = (struct stm32_fmc2_nfc *)dev_id;

 if (fmc2->irq_state == FMC2_IRQ_SEQ)

  stm32_fmc2_disable_seq_irq(fmc2);
 else if (fmc2->irq_state == FMC2_IRQ_BCH)

  stm32_fmc2_disable_bch_irq(fmc2);

 complete(&fmc2->complete);

 return IRQ_HANDLED;
}
