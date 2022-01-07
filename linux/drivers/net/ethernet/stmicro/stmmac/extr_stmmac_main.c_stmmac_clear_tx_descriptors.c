
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {int * dma_tx; TYPE_1__* dma_etx; } ;
struct stmmac_priv {int mode; scalar_t__ extend_desc; struct stmmac_tx_queue* tx_queue; } ;
struct TYPE_2__ {int basic; } ;


 int DMA_TX_SIZE ;
 int stmmac_init_tx_desc (struct stmmac_priv*,int *,int ,int) ;

__attribute__((used)) static void stmmac_clear_tx_descriptors(struct stmmac_priv *priv, u32 queue)
{
 struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];
 int i;


 for (i = 0; i < DMA_TX_SIZE; i++)
  if (priv->extend_desc)
   stmmac_init_tx_desc(priv, &tx_q->dma_etx[i].basic,
     priv->mode, (i == DMA_TX_SIZE - 1));
  else
   stmmac_init_tx_desc(priv, &tx_q->dma_tx[i],
     priv->mode, (i == DMA_TX_SIZE - 1));
}
