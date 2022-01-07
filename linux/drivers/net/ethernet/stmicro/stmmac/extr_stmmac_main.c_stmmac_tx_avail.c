
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stmmac_tx_queue {scalar_t__ dirty_tx; scalar_t__ cur_tx; } ;
struct stmmac_priv {struct stmmac_tx_queue* tx_queue; } ;


 size_t DMA_TX_SIZE ;

__attribute__((used)) static inline u32 stmmac_tx_avail(struct stmmac_priv *priv, u32 queue)
{
 struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];
 u32 avail;

 if (tx_q->dirty_tx > tx_q->cur_tx)
  avail = tx_q->dirty_tx - tx_q->cur_tx - 1;
 else
  avail = DMA_TX_SIZE - tx_q->cur_tx + tx_q->dirty_tx - 1;

 return avail;
}
