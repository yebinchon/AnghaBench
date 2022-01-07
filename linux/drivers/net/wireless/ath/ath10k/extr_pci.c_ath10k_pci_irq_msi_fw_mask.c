
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int hw_rev; } ;
 scalar_t__ CORE_CTRL_ADDRESS ;
 int CORE_CTRL_PCIE_REG_31_MASK ;
 scalar_t__ SOC_CORE_BASE_ADDRESS ;
 int ath10k_pci_read32 (struct ath10k*,scalar_t__) ;
 int ath10k_pci_write32 (struct ath10k*,scalar_t__,int ) ;

void ath10k_pci_irq_msi_fw_mask(struct ath10k *ar)
{
 u32 val;

 switch (ar->hw_rev) {
 case 131:
 case 133:
 case 135:
 case 134:
  val = ath10k_pci_read32(ar, SOC_CORE_BASE_ADDRESS +
     CORE_CTRL_ADDRESS);
  val &= ~CORE_CTRL_PCIE_REG_31_MASK;
  ath10k_pci_write32(ar, SOC_CORE_BASE_ADDRESS +
       CORE_CTRL_ADDRESS, val);
  break;
 case 129:
 case 130:
 case 132:
 case 136:



  break;
 case 128:
  break;
 }
}
