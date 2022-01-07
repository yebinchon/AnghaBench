
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_dev {int pdev; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,void*,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int solo_p2m_dma_t (struct solo_dev*,int,int ,int ,int ,int,int ) ;

int solo_p2m_dma(struct solo_dev *solo_dev, int wr,
   void *sys_addr, u32 ext_addr, u32 size,
   int repeat, u32 ext_size)
{
 dma_addr_t dma_addr;
 int ret;

 if (WARN_ON_ONCE((unsigned long)sys_addr & 0x03))
  return -EINVAL;
 if (WARN_ON_ONCE(!size))
  return -EINVAL;

 dma_addr = pci_map_single(solo_dev->pdev, sys_addr, size,
      wr ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(solo_dev->pdev, dma_addr))
  return -ENOMEM;

 ret = solo_p2m_dma_t(solo_dev, wr, dma_addr, ext_addr, size,
        repeat, ext_size);

 pci_unmap_single(solo_dev->pdev, dma_addr, size,
    wr ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);

 return ret;
}
