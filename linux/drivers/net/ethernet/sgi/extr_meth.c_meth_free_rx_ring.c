
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meth_private {int * rx_skbs; scalar_t__* rx_ring_dmas; scalar_t__* rx_ring; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int METH_RX_BUFF_SIZE ;
 int RX_RING_ENTRIES ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int kfree_skb (int ) ;

__attribute__((used)) static void meth_free_rx_ring(struct meth_private *priv)
{
 int i;

 for (i = 0; i < RX_RING_ENTRIES; i++) {
  dma_unmap_single(&priv->pdev->dev, priv->rx_ring_dmas[i],
     METH_RX_BUFF_SIZE, DMA_FROM_DEVICE);
  priv->rx_ring[i] = 0;
  priv->rx_ring_dmas[i] = 0;
  kfree_skb(priv->rx_skbs[i]);
 }
}
