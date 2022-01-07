
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meth_private {int tx_ring_dma; int tx_ring; TYPE_1__* pdev; int ** tx_skbs; } ;
struct TYPE_2__ {int dev; } ;


 int TX_RING_BUFFER_SIZE ;
 int TX_RING_ENTRIES ;
 int dev_kfree_skb (int *) ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void meth_free_tx_ring(struct meth_private *priv)
{
 int i;


 for (i = 0; i < TX_RING_ENTRIES; i++) {
  dev_kfree_skb(priv->tx_skbs[i]);
  priv->tx_skbs[i] = ((void*)0);
 }
 dma_free_coherent(&priv->pdev->dev, TX_RING_BUFFER_SIZE, priv->tx_ring,
                   priv->tx_ring_dma);
}
