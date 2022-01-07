
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ddb_dma {int num; int ** vbuf; int * pbuf; int size; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_RETRY_MAYFAIL ;
 scalar_t__ alt_dma ;
 int * dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_map_single (int *,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;

__attribute__((used)) static int dma_alloc(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
{
 int i;

 if (!dma)
  return 0;
 for (i = 0; i < dma->num; i++) {
  if (alt_dma) {
   dma->vbuf[i] = kmalloc(dma->size, __GFP_RETRY_MAYFAIL);
   if (!dma->vbuf[i])
    return -ENOMEM;
   dma->pbuf[i] = dma_map_single(&pdev->dev,
            dma->vbuf[i],
            dma->size,
            dir ? DMA_TO_DEVICE :
            DMA_FROM_DEVICE);
   if (dma_mapping_error(&pdev->dev, dma->pbuf[i])) {
    kfree(dma->vbuf[i]);
    dma->vbuf[i] = ((void*)0);
    return -ENOMEM;
   }
  } else {
   dma->vbuf[i] = dma_alloc_coherent(&pdev->dev,
         dma->size,
         &dma->pbuf[i],
         GFP_KERNEL);
   if (!dma->vbuf[i])
    return -ENOMEM;
  }
 }
 return 0;
}
