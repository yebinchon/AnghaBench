
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 scalar_t__ PCIE_INTR_CAUSE_ADDRESS ;
 int PCIE_INTR_CE_MASK_ALL ;
 int PCIE_INTR_FIRMWARE_MASK ;
 scalar_t__ SOC_CORE_BASE_ADDRESS ;
 int ath10k_pci_read32 (struct ath10k*,scalar_t__) ;

bool ath10k_pci_irq_pending(struct ath10k *ar)
{
 u32 cause;


 cause = ath10k_pci_read32(ar, SOC_CORE_BASE_ADDRESS +
      PCIE_INTR_CAUSE_ADDRESS);
 if (cause & (PCIE_INTR_FIRMWARE_MASK | PCIE_INTR_CE_MASK_ALL))
  return 1;

 return 0;
}
