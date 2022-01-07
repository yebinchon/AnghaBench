
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_rx_queue {scalar_t__ dma_rx; scalar_t__ dma_erx; } ;
struct stmmac_priv {scalar_t__ extend_desc; struct stmmac_rx_queue* rx_queue; TYPE_1__* plat; } ;
struct TYPE_2__ {size_t rx_queues_to_use; } ;


 int DMA_RX_SIZE ;
 int pr_info (char*,size_t) ;
 int stmmac_display_ring (struct stmmac_priv*,void*,int ,int) ;

__attribute__((used)) static void stmmac_display_rx_rings(struct stmmac_priv *priv)
{
 u32 rx_cnt = priv->plat->rx_queues_to_use;
 void *head_rx;
 u32 queue;


 for (queue = 0; queue < rx_cnt; queue++) {
  struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];

  pr_info("\tRX Queue %u rings\n", queue);

  if (priv->extend_desc)
   head_rx = (void *)rx_q->dma_erx;
  else
   head_rx = (void *)rx_q->dma_rx;


  stmmac_display_ring(priv, head_rx, DMA_RX_SIZE, 1);
 }
}
