
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {size_t queue_index; void* dma_tx; int dma_tx_phy; void* dma_etx; void* tx_skbuff; void* tx_skbuff_dma; struct stmmac_priv* priv_data; } ;
struct stmmac_priv {int device; scalar_t__ extend_desc; struct stmmac_tx_queue* tx_queue; TYPE_1__* plat; } ;
struct sk_buff {int dummy; } ;
struct dma_extended_desc {int dummy; } ;
struct dma_desc {int dummy; } ;
struct TYPE_2__ {size_t tx_queues_to_use; } ;


 int DMA_TX_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 int free_dma_tx_desc_resources (struct stmmac_priv*) ;
 void* kcalloc (int,int,int ) ;

__attribute__((used)) static int alloc_dma_tx_desc_resources(struct stmmac_priv *priv)
{
 u32 tx_count = priv->plat->tx_queues_to_use;
 int ret = -ENOMEM;
 u32 queue;


 for (queue = 0; queue < tx_count; queue++) {
  struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];

  tx_q->queue_index = queue;
  tx_q->priv_data = priv;

  tx_q->tx_skbuff_dma = kcalloc(DMA_TX_SIZE,
           sizeof(*tx_q->tx_skbuff_dma),
           GFP_KERNEL);
  if (!tx_q->tx_skbuff_dma)
   goto err_dma;

  tx_q->tx_skbuff = kcalloc(DMA_TX_SIZE,
       sizeof(struct sk_buff *),
       GFP_KERNEL);
  if (!tx_q->tx_skbuff)
   goto err_dma;

  if (priv->extend_desc) {
   tx_q->dma_etx = dma_alloc_coherent(priv->device,
          DMA_TX_SIZE * sizeof(struct dma_extended_desc),
          &tx_q->dma_tx_phy,
          GFP_KERNEL);
   if (!tx_q->dma_etx)
    goto err_dma;
  } else {
   tx_q->dma_tx = dma_alloc_coherent(priv->device,
         DMA_TX_SIZE * sizeof(struct dma_desc),
         &tx_q->dma_tx_phy,
         GFP_KERNEL);
   if (!tx_q->dma_tx)
    goto err_dma;
  }
 }

 return 0;

err_dma:
 free_dma_tx_desc_resources(priv);

 return ret;
}
