
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {int tx_skbuff; int tx_skbuff_dma; int dma_tx_phy; int dma_etx; int dma_tx; } ;
struct stmmac_priv {int device; int extend_desc; struct stmmac_tx_queue* tx_queue; TYPE_1__* plat; } ;
struct dma_extended_desc {int dummy; } ;
struct dma_desc {int dummy; } ;
struct TYPE_2__ {size_t tx_queues_to_use; } ;


 int DMA_TX_SIZE ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int dma_free_tx_skbufs (struct stmmac_priv*,size_t) ;
 int kfree (int ) ;

__attribute__((used)) static void free_dma_tx_desc_resources(struct stmmac_priv *priv)
{
 u32 tx_count = priv->plat->tx_queues_to_use;
 u32 queue;


 for (queue = 0; queue < tx_count; queue++) {
  struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];


  dma_free_tx_skbufs(priv, queue);


  if (!priv->extend_desc)
   dma_free_coherent(priv->device,
       DMA_TX_SIZE * sizeof(struct dma_desc),
       tx_q->dma_tx, tx_q->dma_tx_phy);
  else
   dma_free_coherent(priv->device, DMA_TX_SIZE *
       sizeof(struct dma_extended_desc),
       tx_q->dma_etx, tx_q->dma_tx_phy);

  kfree(tx_q->tx_skbuff_dma);
  kfree(tx_q->tx_skbuff);
 }
}
