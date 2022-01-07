
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_pci_irq_disable (struct ath10k*) ;
 int ath10k_pci_qca99x0_chip_reset (struct ath10k*) ;

__attribute__((used)) static int ath10k_pci_qca99x0_soft_chip_reset(struct ath10k *ar)
{
 ath10k_pci_irq_disable(ar);
 return ath10k_pci_qca99x0_chip_reset(ar);
}
