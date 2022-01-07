
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {scalar_t__ mss; scalar_t__ cur_tx; scalar_t__ dirty_tx; int * dma_tx; TYPE_1__* dma_etx; } ;
struct stmmac_priv {TYPE_3__* dev; int mode; scalar_t__ extend_desc; struct stmmac_tx_queue* tx_queue; } ;
struct TYPE_5__ {int tx_errors; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int basic; } ;


 int DMA_TX_SIZE ;
 int dma_free_tx_skbufs (struct stmmac_priv*,size_t) ;
 int netdev_get_tx_queue (TYPE_3__*,size_t) ;
 int netdev_tx_reset_queue (int ) ;
 int netif_tx_stop_queue (int ) ;
 int netif_tx_wake_queue (int ) ;
 int stmmac_init_tx_desc (struct stmmac_priv*,int *,int ,int) ;
 int stmmac_start_tx_dma (struct stmmac_priv*,size_t) ;
 int stmmac_stop_tx_dma (struct stmmac_priv*,size_t) ;

__attribute__((used)) static void stmmac_tx_err(struct stmmac_priv *priv, u32 chan)
{
 struct stmmac_tx_queue *tx_q = &priv->tx_queue[chan];
 int i;

 netif_tx_stop_queue(netdev_get_tx_queue(priv->dev, chan));

 stmmac_stop_tx_dma(priv, chan);
 dma_free_tx_skbufs(priv, chan);
 for (i = 0; i < DMA_TX_SIZE; i++)
  if (priv->extend_desc)
   stmmac_init_tx_desc(priv, &tx_q->dma_etx[i].basic,
     priv->mode, (i == DMA_TX_SIZE - 1));
  else
   stmmac_init_tx_desc(priv, &tx_q->dma_tx[i],
     priv->mode, (i == DMA_TX_SIZE - 1));
 tx_q->dirty_tx = 0;
 tx_q->cur_tx = 0;
 tx_q->mss = 0;
 netdev_tx_reset_queue(netdev_get_tx_queue(priv->dev, chan));
 stmmac_start_tx_dma(priv, chan);

 priv->dev->stats.tx_errors++;
 netif_tx_wake_queue(netdev_get_tx_queue(priv->dev, chan));
}
