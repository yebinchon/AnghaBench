
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_pcr {int bier; int card_inserted; int card_removed; int lock; int carddet_work; scalar_t__ done; int trans_result; scalar_t__ dma_error_count; } ;
typedef int irqreturn_t ;


 int DELINK_INT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MS_EXIST ;
 int MS_INT ;
 int NEED_COMPLETE_INT ;
 int RTSX_BIPR ;
 int SD_EXIST ;
 int SD_INT ;
 int SD_OC_INT ;
 int TRANS_FAIL_INT ;
 int TRANS_OK_INT ;
 int TRANS_RESULT_FAIL ;
 int TRANS_RESULT_OK ;
 int complete (scalar_t__) ;
 int msecs_to_jiffies (int) ;
 int rtsx_pci_process_ocp_interrupt (struct rtsx_pcr*) ;
 int rtsx_pci_readl (struct rtsx_pcr*,int ) ;
 int rtsx_pci_writel (struct rtsx_pcr*,int ,int) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t rtsx_pci_isr(int irq, void *dev_id)
{
 struct rtsx_pcr *pcr = dev_id;
 u32 int_reg;

 if (!pcr)
  return IRQ_NONE;

 spin_lock(&pcr->lock);

 int_reg = rtsx_pci_readl(pcr, RTSX_BIPR);

 rtsx_pci_writel(pcr, RTSX_BIPR, int_reg);
 if ((int_reg & pcr->bier) == 0) {
  spin_unlock(&pcr->lock);
  return IRQ_NONE;
 }
 if (int_reg == 0xFFFFFFFF) {
  spin_unlock(&pcr->lock);
  return IRQ_HANDLED;
 }

 int_reg &= (pcr->bier | 0x7FFFFF);

 if (int_reg & SD_OC_INT)
  rtsx_pci_process_ocp_interrupt(pcr);

 if (int_reg & SD_INT) {
  if (int_reg & SD_EXIST) {
   pcr->card_inserted |= SD_EXIST;
  } else {
   pcr->card_removed |= SD_EXIST;
   pcr->card_inserted &= ~SD_EXIST;
  }
  pcr->dma_error_count = 0;
 }

 if (int_reg & MS_INT) {
  if (int_reg & MS_EXIST) {
   pcr->card_inserted |= MS_EXIST;
  } else {
   pcr->card_removed |= MS_EXIST;
   pcr->card_inserted &= ~MS_EXIST;
  }
 }

 if (int_reg & (NEED_COMPLETE_INT | DELINK_INT)) {
  if (int_reg & (TRANS_FAIL_INT | DELINK_INT)) {
   pcr->trans_result = TRANS_RESULT_FAIL;
   if (pcr->done)
    complete(pcr->done);
  } else if (int_reg & TRANS_OK_INT) {
   pcr->trans_result = TRANS_RESULT_OK;
   if (pcr->done)
    complete(pcr->done);
  }
 }

 if ((pcr->card_inserted || pcr->card_removed) && !(int_reg & SD_OC_INT))
  schedule_delayed_work(&pcr->carddet_work,
    msecs_to_jiffies(200));

 spin_unlock(&pcr->lock);
 return IRQ_HANDLED;
}
