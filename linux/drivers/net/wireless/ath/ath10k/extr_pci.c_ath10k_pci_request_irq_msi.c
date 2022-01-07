
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_pci {TYPE_1__* pdev; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int ath10k_pci_interrupt_handler ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int request_irq (int ,int ,int ,char*,struct ath10k*) ;

__attribute__((used)) static int ath10k_pci_request_irq_msi(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 int ret;

 ret = request_irq(ar_pci->pdev->irq,
     ath10k_pci_interrupt_handler,
     IRQF_SHARED, "ath10k_pci", ar);
 if (ret) {
  ath10k_warn(ar, "failed to request MSI irq %d: %d\n",
       ar_pci->pdev->irq, ret);
  return ret;
 }

 return 0;
}
