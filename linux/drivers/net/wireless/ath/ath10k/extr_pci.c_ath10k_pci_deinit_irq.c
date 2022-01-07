
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int oper_irq_mode; int pdev; } ;
struct ath10k {int dummy; } ;



 int ath10k_pci_deinit_irq_legacy (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int pci_disable_msi (int ) ;

__attribute__((used)) static int ath10k_pci_deinit_irq(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 switch (ar_pci->oper_irq_mode) {
 case 128:
  ath10k_pci_deinit_irq_legacy(ar);
  break;
 default:
  pci_disable_msi(ar_pci->pdev);
  break;
 }

 return 0;
}
