
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int PCIE_INTR_CE_MASK_ALL ;
 scalar_t__ PCIE_INTR_CLR_ADDRESS ;
 scalar_t__ PCIE_INTR_ENABLE_ADDRESS ;
 int PCIE_INTR_FIRMWARE_MASK ;
 scalar_t__ SOC_CORE_BASE_ADDRESS ;
 int ath10k_pci_read32 (struct ath10k*,scalar_t__) ;
 int ath10k_pci_write32 (struct ath10k*,scalar_t__,int) ;

void ath10k_pci_disable_and_clear_legacy_irq(struct ath10k *ar)
{




 ath10k_pci_write32(ar, SOC_CORE_BASE_ADDRESS + PCIE_INTR_ENABLE_ADDRESS,
      0);
 ath10k_pci_write32(ar, SOC_CORE_BASE_ADDRESS + PCIE_INTR_CLR_ADDRESS,
      PCIE_INTR_FIRMWARE_MASK | PCIE_INTR_CE_MASK_ALL);




 (void)ath10k_pci_read32(ar, SOC_CORE_BASE_ADDRESS +
    PCIE_INTR_ENABLE_ADDRESS);
}
