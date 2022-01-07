
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_rx_queue {int * dma_rx; TYPE_1__* dma_erx; } ;
struct stmmac_priv {int dma_buf_sz; int mode; int use_riwt; scalar_t__ extend_desc; struct stmmac_rx_queue* rx_queue; } ;
struct TYPE_2__ {int basic; } ;


 int DMA_RX_SIZE ;
 int stmmac_init_rx_desc (struct stmmac_priv*,int *,int ,int ,int,int ) ;

__attribute__((used)) static void stmmac_clear_rx_descriptors(struct stmmac_priv *priv, u32 queue)
{
 struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
 int i;


 for (i = 0; i < DMA_RX_SIZE; i++)
  if (priv->extend_desc)
   stmmac_init_rx_desc(priv, &rx_q->dma_erx[i].basic,
     priv->use_riwt, priv->mode,
     (i == DMA_RX_SIZE - 1),
     priv->dma_buf_sz);
  else
   stmmac_init_rx_desc(priv, &rx_q->dma_rx[i],
     priv->use_riwt, priv->mode,
     (i == DMA_RX_SIZE - 1),
     priv->dma_buf_sz);
}
