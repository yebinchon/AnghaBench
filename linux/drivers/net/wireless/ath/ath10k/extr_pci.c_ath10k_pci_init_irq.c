
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {scalar_t__ oper_irq_mode; int pdev; } ;
struct ath10k {int dummy; } ;


 scalar_t__ ATH10K_PCI_IRQ_AUTO ;
 scalar_t__ ATH10K_PCI_IRQ_LEGACY ;
 scalar_t__ ATH10K_PCI_IRQ_MSI ;
 int PCIE_INTR_CE_MASK_ALL ;
 scalar_t__ PCIE_INTR_ENABLE_ADDRESS ;
 int PCIE_INTR_FIRMWARE_MASK ;
 scalar_t__ SOC_CORE_BASE_ADDRESS ;
 int ath10k_info (struct ath10k*,char*,scalar_t__) ;
 int ath10k_pci_init_napi (struct ath10k*) ;
 scalar_t__ ath10k_pci_irq_mode ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_write32 (struct ath10k*,scalar_t__,int) ;
 int pci_enable_msi (int ) ;

__attribute__((used)) static int ath10k_pci_init_irq(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 int ret;

 ath10k_pci_init_napi(ar);

 if (ath10k_pci_irq_mode != ATH10K_PCI_IRQ_AUTO)
  ath10k_info(ar, "limiting irq mode to: %d\n",
       ath10k_pci_irq_mode);


 if (ath10k_pci_irq_mode != ATH10K_PCI_IRQ_LEGACY) {
  ar_pci->oper_irq_mode = ATH10K_PCI_IRQ_MSI;
  ret = pci_enable_msi(ar_pci->pdev);
  if (ret == 0)
   return 0;


 }
 ar_pci->oper_irq_mode = ATH10K_PCI_IRQ_LEGACY;

 ath10k_pci_write32(ar, SOC_CORE_BASE_ADDRESS + PCIE_INTR_ENABLE_ADDRESS,
      PCIE_INTR_FIRMWARE_MASK | PCIE_INTR_CE_MASK_ALL);

 return 0;
}
