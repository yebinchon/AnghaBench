
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int (* pci_soft_reset ) (struct ath10k*) ;} ;
struct ath10k {int dummy; } ;


 int ENOTSUPP ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int stub1 (struct ath10k*) ;

__attribute__((used)) static int ath10k_pci_safe_chip_reset(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 if (!ar_pci->pci_soft_reset)
  return -ENOTSUPP;

 return ar_pci->pci_soft_reset(ar);
}
