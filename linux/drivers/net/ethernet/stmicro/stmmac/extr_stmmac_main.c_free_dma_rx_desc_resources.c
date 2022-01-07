
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_rx_queue {scalar_t__ page_pool; int buf_pool; int dma_rx_phy; int dma_erx; int dma_rx; } ;
struct stmmac_priv {int device; int extend_desc; struct stmmac_rx_queue* rx_queue; TYPE_1__* plat; } ;
struct dma_extended_desc {int dummy; } ;
struct dma_desc {int dummy; } ;
struct TYPE_2__ {size_t rx_queues_to_use; } ;


 int DMA_RX_SIZE ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int dma_free_rx_skbufs (struct stmmac_priv*,size_t) ;
 int kfree (int ) ;
 int page_pool_destroy (scalar_t__) ;
 int page_pool_request_shutdown (scalar_t__) ;

__attribute__((used)) static void free_dma_rx_desc_resources(struct stmmac_priv *priv)
{
 u32 rx_count = priv->plat->rx_queues_to_use;
 u32 queue;


 for (queue = 0; queue < rx_count; queue++) {
  struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];


  dma_free_rx_skbufs(priv, queue);


  if (!priv->extend_desc)
   dma_free_coherent(priv->device,
       DMA_RX_SIZE * sizeof(struct dma_desc),
       rx_q->dma_rx, rx_q->dma_rx_phy);
  else
   dma_free_coherent(priv->device, DMA_RX_SIZE *
       sizeof(struct dma_extended_desc),
       rx_q->dma_erx, rx_q->dma_rx_phy);

  kfree(rx_q->buf_pool);
  if (rx_q->page_pool) {
   page_pool_request_shutdown(rx_q->page_pool);
   page_pool_destroy(rx_q->page_pool);
  }
 }
}
