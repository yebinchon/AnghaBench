
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 scalar_t__ PCIE_INTR_ENABLE_ADDRESS ;
 scalar_t__ SOC_CORE_BASE_ADDRESS ;
 int ath10k_pci_write32 (struct ath10k*,scalar_t__,int ) ;

__attribute__((used)) static void ath10k_pci_deinit_irq_legacy(struct ath10k *ar)
{
 ath10k_pci_write32(ar, SOC_CORE_BASE_ADDRESS + PCIE_INTR_ENABLE_ADDRESS,
      0);
}
