
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100_txdes {int dummy; } ;
struct ftgmac100_rxdes {int dummy; } ;
struct ftgmac100 {int rx_scratch_dma; int * rx_scratch; int dev; int * txdes; int txdes_dma; int * rxdes; int rxdes_dma; int tx_skbs; int rx_skbs; } ;


 int MAX_RX_QUEUE_ENTRIES ;
 int MAX_TX_QUEUE_ENTRIES ;
 int RX_BUF_SIZE ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void ftgmac100_free_rings(struct ftgmac100 *priv)
{

 kfree(priv->rx_skbs);
 kfree(priv->tx_skbs);


 if (priv->rxdes)
  dma_free_coherent(priv->dev, MAX_RX_QUEUE_ENTRIES *
      sizeof(struct ftgmac100_rxdes),
      priv->rxdes, priv->rxdes_dma);
 priv->rxdes = ((void*)0);

 if (priv->txdes)
  dma_free_coherent(priv->dev, MAX_TX_QUEUE_ENTRIES *
      sizeof(struct ftgmac100_txdes),
      priv->txdes, priv->txdes_dma);
 priv->txdes = ((void*)0);


 if (priv->rx_scratch)
  dma_free_coherent(priv->dev, RX_BUF_SIZE,
      priv->rx_scratch, priv->rx_scratch_dma);
}
