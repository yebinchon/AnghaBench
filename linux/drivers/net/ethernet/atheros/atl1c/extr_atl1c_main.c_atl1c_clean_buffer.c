
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct atl1c_buffer {int flags; int * skb; scalar_t__ dma; int length; } ;


 int ATL1C_BUFFER_FREE ;
 int ATL1C_PCIMAP_FROMDEVICE ;
 int ATL1C_PCIMAP_PAGE ;
 int ATL1C_PCIMAP_SINGLE ;
 int ATL1C_SET_BUFFER_STATE (struct atl1c_buffer*,int) ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int dev_consume_skb_any (int *) ;
 int pci_unmap_page (struct pci_dev*,scalar_t__,int ,int ) ;
 int pci_unmap_single (struct pci_dev*,scalar_t__,int ,int ) ;

__attribute__((used)) static inline void atl1c_clean_buffer(struct pci_dev *pdev,
    struct atl1c_buffer *buffer_info)
{
 u16 pci_driection;
 if (buffer_info->flags & ATL1C_BUFFER_FREE)
  return;
 if (buffer_info->dma) {
  if (buffer_info->flags & ATL1C_PCIMAP_FROMDEVICE)
   pci_driection = PCI_DMA_FROMDEVICE;
  else
   pci_driection = PCI_DMA_TODEVICE;

  if (buffer_info->flags & ATL1C_PCIMAP_SINGLE)
   pci_unmap_single(pdev, buffer_info->dma,
     buffer_info->length, pci_driection);
  else if (buffer_info->flags & ATL1C_PCIMAP_PAGE)
   pci_unmap_page(pdev, buffer_info->dma,
     buffer_info->length, pci_driection);
 }
 if (buffer_info->skb)
  dev_consume_skb_any(buffer_info->skb);
 buffer_info->dma = 0;
 buffer_info->skb = ((void*)0);
 ATL1C_SET_BUFFER_STATE(buffer_info, ATL1C_BUFFER_FREE);
}
