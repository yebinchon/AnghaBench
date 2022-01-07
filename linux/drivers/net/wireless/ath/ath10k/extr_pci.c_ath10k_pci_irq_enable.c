
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_ce_enable_interrupts (struct ath10k*) ;
 int ath10k_pci_enable_legacy_irq (struct ath10k*) ;
 int ath10k_pci_irq_msi_fw_unmask (struct ath10k*) ;

__attribute__((used)) static void ath10k_pci_irq_enable(struct ath10k *ar)
{
 ath10k_ce_enable_interrupts(ar);
 ath10k_pci_enable_legacy_irq(ar);
 ath10k_pci_irq_msi_fw_unmask(ar);
}
