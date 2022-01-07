
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; } ;
struct bnxt {int rx_dma_offset; int rx_dir; int rx_buf_use_size; int rx_buf_size; struct pci_dev* pdev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_ATTR_WEAK_ORDERING ;
 int dma_map_single_attrs (int *,int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static inline u8 *__bnxt_alloc_rx_data(struct bnxt *bp, dma_addr_t *mapping,
           gfp_t gfp)
{
 u8 *data;
 struct pci_dev *pdev = bp->pdev;

 data = kmalloc(bp->rx_buf_size, gfp);
 if (!data)
  return ((void*)0);

 *mapping = dma_map_single_attrs(&pdev->dev, data + bp->rx_dma_offset,
     bp->rx_buf_use_size, bp->rx_dir,
     DMA_ATTR_WEAK_ORDERING);

 if (dma_mapping_error(&pdev->dev, *mapping)) {
  kfree(data);
  data = ((void*)0);
 }
 return data;
}
