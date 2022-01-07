
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dev; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int dma_unmap_page (int *,int ,int,int ) ;

__attribute__((used)) static inline void
lio_unmap_ring(struct pci_dev *pci_dev,
        u64 buf_ptr)

{
 dma_unmap_page(&pci_dev->dev,
         buf_ptr, (PAGE_SIZE << 0),
         DMA_FROM_DEVICE);
}
