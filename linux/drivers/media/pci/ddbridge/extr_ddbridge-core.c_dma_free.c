
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ddb_dma {int num; int ** vbuf; int * pbuf; int size; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ alt_dma ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void dma_free(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
{
 int i;

 if (!dma)
  return;
 for (i = 0; i < dma->num; i++) {
  if (dma->vbuf[i]) {
   if (alt_dma) {
    dma_unmap_single(&pdev->dev, dma->pbuf[i],
       dma->size,
       dir ? DMA_TO_DEVICE :
       DMA_FROM_DEVICE);
    kfree(dma->vbuf[i]);
    dma->vbuf[i] = ((void*)0);
   } else {
    dma_free_coherent(&pdev->dev, dma->size,
        dma->vbuf[i], dma->pbuf[i]);
   }

   dma->vbuf[i] = ((void*)0);
  }
 }
}
