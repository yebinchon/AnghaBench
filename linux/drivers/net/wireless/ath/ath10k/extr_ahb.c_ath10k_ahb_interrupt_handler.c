
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ath10k_pci_disable_and_clear_legacy_irq (struct ath10k*) ;
 int ath10k_pci_irq_msi_fw_mask (struct ath10k*) ;
 int ath10k_pci_irq_pending (struct ath10k*) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ath10k_ahb_interrupt_handler(int irq, void *arg)
{
 struct ath10k *ar = arg;

 if (!ath10k_pci_irq_pending(ar))
  return IRQ_NONE;

 ath10k_pci_disable_and_clear_legacy_irq(ar);
 ath10k_pci_irq_msi_fw_mask(ar);
 napi_schedule(&ar->napi);

 return IRQ_HANDLED;
}
