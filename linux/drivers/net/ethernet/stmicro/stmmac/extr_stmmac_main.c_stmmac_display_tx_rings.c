
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {scalar_t__ dma_tx; scalar_t__ dma_etx; } ;
struct stmmac_priv {scalar_t__ extend_desc; struct stmmac_tx_queue* tx_queue; TYPE_1__* plat; } ;
struct TYPE_2__ {size_t tx_queues_to_use; } ;


 int DMA_TX_SIZE ;
 int pr_info (char*,size_t) ;
 int stmmac_display_ring (struct stmmac_priv*,void*,int ,int) ;

__attribute__((used)) static void stmmac_display_tx_rings(struct stmmac_priv *priv)
{
 u32 tx_cnt = priv->plat->tx_queues_to_use;
 void *head_tx;
 u32 queue;


 for (queue = 0; queue < tx_cnt; queue++) {
  struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];

  pr_info("\tTX Queue %d rings\n", queue);

  if (priv->extend_desc)
   head_tx = (void *)tx_q->dma_etx;
  else
   head_tx = (void *)tx_q->dma_tx;

  stmmac_display_ring(priv, head_tx, DMA_TX_SIZE, 0);
 }
}
