
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100_txdes {int dummy; } ;
struct ftgmac100_rxdes {int dummy; } ;
struct ftgmac100 {void* rx_scratch; int rx_scratch_dma; int dev; void* txdes; int txdes_dma; void* rxdes; int rxdes_dma; void* tx_skbs; void* rx_skbs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RX_QUEUE_ENTRIES ;
 int MAX_TX_QUEUE_ENTRIES ;
 int RX_BUF_SIZE ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 void* kcalloc (int,int,int ) ;

__attribute__((used)) static int ftgmac100_alloc_rings(struct ftgmac100 *priv)
{

 priv->rx_skbs = kcalloc(MAX_RX_QUEUE_ENTRIES, sizeof(void *),
    GFP_KERNEL);
 if (!priv->rx_skbs)
  return -ENOMEM;
 priv->tx_skbs = kcalloc(MAX_TX_QUEUE_ENTRIES, sizeof(void *),
    GFP_KERNEL);
 if (!priv->tx_skbs)
  return -ENOMEM;


 priv->rxdes = dma_alloc_coherent(priv->dev,
      MAX_RX_QUEUE_ENTRIES * sizeof(struct ftgmac100_rxdes),
      &priv->rxdes_dma, GFP_KERNEL);
 if (!priv->rxdes)
  return -ENOMEM;
 priv->txdes = dma_alloc_coherent(priv->dev,
      MAX_TX_QUEUE_ENTRIES * sizeof(struct ftgmac100_txdes),
      &priv->txdes_dma, GFP_KERNEL);
 if (!priv->txdes)
  return -ENOMEM;


 priv->rx_scratch = dma_alloc_coherent(priv->dev,
           RX_BUF_SIZE,
           &priv->rx_scratch_dma,
           GFP_KERNEL);
 if (!priv->rx_scratch)
  return -ENOMEM;

 return 0;
}
