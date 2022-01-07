
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {scalar_t__ oper_irq_mode; } ;
struct ath10k {int napi; } ;
typedef int irqreturn_t ;


 scalar_t__ ATH10K_PCI_IRQ_LEGACY ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ath10k_pci_disable_and_clear_legacy_irq (struct ath10k*) ;
 int ath10k_pci_force_wake (struct ath10k*) ;
 scalar_t__ ath10k_pci_has_device_gone (struct ath10k*) ;
 int ath10k_pci_irq_msi_fw_mask (struct ath10k*) ;
 int ath10k_pci_irq_pending (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ath10k_pci_interrupt_handler(int irq, void *arg)
{
 struct ath10k *ar = arg;
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 int ret;

 if (ath10k_pci_has_device_gone(ar))
  return IRQ_NONE;

 ret = ath10k_pci_force_wake(ar);
 if (ret) {
  ath10k_warn(ar, "failed to wake device up on irq: %d\n", ret);
  return IRQ_NONE;
 }

 if ((ar_pci->oper_irq_mode == ATH10K_PCI_IRQ_LEGACY) &&
     !ath10k_pci_irq_pending(ar))
  return IRQ_NONE;

 ath10k_pci_disable_and_clear_legacy_irq(ar);
 ath10k_pci_irq_msi_fw_mask(ar);
 napi_schedule(&ar->napi);

 return IRQ_HANDLED;
}
