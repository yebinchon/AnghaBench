
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* bufaddrl; void* bufaddrh; int datalen; int flags; } ;
struct txdesc {TYPE_1__ desc2; scalar_t__* dw; } ;
struct pci_dev {int dummy; } ;
struct page {int dummy; } ;
struct jme_buffer_info {int len; scalar_t__ mapping; } ;
typedef scalar_t__ dma_addr_t ;
typedef int __u64 ;


 int EINVAL ;
 int PCI_DMA_TODEVICE ;
 int TXFLAG_64BIT ;
 int TXFLAG_OWN ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int pci_dma_mapping_error (struct pci_dev*,scalar_t__) ;
 int pci_dma_sync_single_for_device (struct pci_dev*,scalar_t__,int ,int ) ;
 scalar_t__ pci_map_page (struct pci_dev*,struct page*,int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
jme_fill_tx_map(struct pci_dev *pdev,
  struct txdesc *txdesc,
  struct jme_buffer_info *txbi,
  struct page *page,
  u32 page_offset,
  u32 len,
  bool hidma)
{
 dma_addr_t dmaaddr;

 dmaaddr = pci_map_page(pdev,
    page,
    page_offset,
    len,
    PCI_DMA_TODEVICE);

 if (unlikely(pci_dma_mapping_error(pdev, dmaaddr)))
  return -EINVAL;

 pci_dma_sync_single_for_device(pdev,
           dmaaddr,
           len,
           PCI_DMA_TODEVICE);

 txdesc->dw[0] = 0;
 txdesc->dw[1] = 0;
 txdesc->desc2.flags = TXFLAG_OWN;
 txdesc->desc2.flags |= (hidma) ? TXFLAG_64BIT : 0;
 txdesc->desc2.datalen = cpu_to_le16(len);
 txdesc->desc2.bufaddrh = cpu_to_le32((__u64)dmaaddr >> 32);
 txdesc->desc2.bufaddrl = cpu_to_le32(
     (__u64)dmaaddr & 0xFFFFFFFFUL);

 txbi->mapping = dmaaddr;
 txbi->len = len;
 return 0;
}
