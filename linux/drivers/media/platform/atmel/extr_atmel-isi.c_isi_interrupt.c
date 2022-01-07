
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_isi {int irqlock; int complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISI_CTRL_DIS ;
 int ISI_CTRL_SRST ;
 int ISI_INTDIS ;
 int ISI_INTMASK ;
 int ISI_SR_CXFR_DONE ;
 int ISI_SR_PXFR_DONE ;
 int ISI_STATUS ;
 int atmel_isi_handle_streaming (struct atmel_isi*) ;
 int complete (int *) ;
 int isi_readl (struct atmel_isi*,int ) ;
 int isi_writel (struct atmel_isi*,int ,int) ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t isi_interrupt(int irq, void *dev_id)
{
 struct atmel_isi *isi = dev_id;
 u32 status, mask, pending;
 irqreturn_t ret = IRQ_NONE;

 spin_lock(&isi->irqlock);

 status = isi_readl(isi, ISI_STATUS);
 mask = isi_readl(isi, ISI_INTMASK);
 pending = status & mask;

 if (pending & ISI_CTRL_SRST) {
  complete(&isi->complete);
  isi_writel(isi, ISI_INTDIS, ISI_CTRL_SRST);
  ret = IRQ_HANDLED;
 } else if (pending & ISI_CTRL_DIS) {
  complete(&isi->complete);
  isi_writel(isi, ISI_INTDIS, ISI_CTRL_DIS);
  ret = IRQ_HANDLED;
 } else {
  if (likely(pending & ISI_SR_CXFR_DONE) ||
    likely(pending & ISI_SR_PXFR_DONE))
   ret = atmel_isi_handle_streaming(isi);
 }

 spin_unlock(&isi->irqlock);
 return ret;
}
