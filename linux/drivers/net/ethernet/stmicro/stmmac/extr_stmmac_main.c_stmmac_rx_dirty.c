
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stmmac_rx_queue {scalar_t__ dirty_rx; scalar_t__ cur_rx; } ;
struct stmmac_priv {struct stmmac_rx_queue* rx_queue; } ;


 size_t DMA_RX_SIZE ;

__attribute__((used)) static inline u32 stmmac_rx_dirty(struct stmmac_priv *priv, u32 queue)
{
 struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
 u32 dirty;

 if (rx_q->dirty_rx <= rx_q->cur_rx)
  dirty = rx_q->cur_rx - rx_q->dirty_rx;
 else
  dirty = DMA_RX_SIZE - rx_q->dirty_rx + rx_q->cur_rx;

 return dirty;
}
