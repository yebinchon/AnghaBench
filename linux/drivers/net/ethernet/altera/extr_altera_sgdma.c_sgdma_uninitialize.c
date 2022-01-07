
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int txdescmem; scalar_t__ txdescphys; int device; int rxdescmem; scalar_t__ rxdescphys; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

void sgdma_uninitialize(struct altera_tse_private *priv)
{
 if (priv->rxdescphys)
  dma_unmap_single(priv->device, priv->rxdescphys,
     priv->rxdescmem, DMA_BIDIRECTIONAL);

 if (priv->txdescphys)
  dma_unmap_single(priv->device, priv->txdescphys,
     priv->txdescmem, DMA_TO_DEVICE);
}
