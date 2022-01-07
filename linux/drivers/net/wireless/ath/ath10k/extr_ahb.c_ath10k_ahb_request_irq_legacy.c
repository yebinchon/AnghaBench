
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int oper_irq_mode; } ;
struct ath10k_ahb {int irq; } ;
struct ath10k {int dummy; } ;


 int ATH10K_PCI_IRQ_LEGACY ;
 int IRQF_SHARED ;
 int ath10k_ahb_interrupt_handler ;
 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int request_irq (int ,int ,int ,char*,struct ath10k*) ;

__attribute__((used)) static int ath10k_ahb_request_irq_legacy(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);
 int ret;

 ret = request_irq(ar_ahb->irq,
     ath10k_ahb_interrupt_handler,
     IRQF_SHARED, "ath10k_ahb", ar);
 if (ret) {
  ath10k_warn(ar, "failed to request legacy irq %d: %d\n",
       ar_ahb->irq, ret);
  return ret;
 }
 ar_pci->oper_irq_mode = ATH10K_PCI_IRQ_LEGACY;

 return 0;
}
