
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {int nbanks; int active_bank; int irq_status; int irq_mask; int irq_lock; int complete; scalar_t__ reg; } ;
typedef int irqreturn_t ;


 scalar_t__ INTR_STATUS (int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int denali_clear_irq (struct denali_controller*,int,int) ;
 int ioread32 (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t denali_isr(int irq, void *dev_id)
{
 struct denali_controller *denali = dev_id;
 irqreturn_t ret = IRQ_NONE;
 u32 irq_status;
 int i;

 spin_lock(&denali->irq_lock);

 for (i = 0; i < denali->nbanks; i++) {
  irq_status = ioread32(denali->reg + INTR_STATUS(i));
  if (irq_status)
   ret = IRQ_HANDLED;

  denali_clear_irq(denali, i, irq_status);

  if (i != denali->active_bank)
   continue;

  denali->irq_status |= irq_status;

  if (denali->irq_status & denali->irq_mask)
   complete(&denali->complete);
 }

 spin_unlock(&denali->irq_lock);

 return ret;
}
