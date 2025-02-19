
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct hinic_hwif {scalar_t__ intr_regs_base; } ;
typedef enum hinic_msix_state { ____Placeholder_hinic_msix_state } hinic_msix_state ;


 scalar_t__ HINIC_PCI_MSIX_ENTRY_CTRL_MASKBIT ;
 int HINIC_PCI_MSIX_ENTRY_SIZE ;
 scalar_t__ HINIC_PCI_MSIX_ENTRY_VECTOR_CTRL ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

void hinic_set_msix_state(struct hinic_hwif *hwif, u16 msix_idx,
     enum hinic_msix_state flag)
{
 u32 offset = msix_idx * HINIC_PCI_MSIX_ENTRY_SIZE +
   HINIC_PCI_MSIX_ENTRY_VECTOR_CTRL;
 u32 mask_bits;

 mask_bits = readl(hwif->intr_regs_base + offset);
 mask_bits &= ~HINIC_PCI_MSIX_ENTRY_CTRL_MASKBIT;

 if (flag)
  mask_bits |= HINIC_PCI_MSIX_ENTRY_CTRL_MASKBIT;

 writel(mask_bits, hwif->intr_regs_base + offset);
}
