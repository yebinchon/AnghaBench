
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int oper_irq_mode; } ;
struct ath10k {int dummy; } ;




 int EINVAL ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_request_irq_legacy (struct ath10k*) ;
 int ath10k_pci_request_irq_msi (struct ath10k*) ;

__attribute__((used)) static int ath10k_pci_request_irq(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 switch (ar_pci->oper_irq_mode) {
 case 129:
  return ath10k_pci_request_irq_legacy(ar);
 case 128:
  return ath10k_pci_request_irq_msi(ar);
 default:
  return -EINVAL;
 }
}
