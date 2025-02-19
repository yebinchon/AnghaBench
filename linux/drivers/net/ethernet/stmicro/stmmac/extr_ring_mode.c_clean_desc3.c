
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_tx_queue {unsigned int dirty_tx; TYPE_1__* tx_skbuff_dma; struct stmmac_priv* priv_data; } ;
struct stmmac_priv {scalar_t__ hwts_tx_en; int extend_desc; } ;
struct dma_desc {scalar_t__ des3; } ;
struct TYPE_2__ {scalar_t__ last_segment; scalar_t__ is_jumbo; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static void clean_desc3(void *priv_ptr, struct dma_desc *p)
{
 struct stmmac_tx_queue *tx_q = (struct stmmac_tx_queue *)priv_ptr;
 struct stmmac_priv *priv = tx_q->priv_data;
 unsigned int entry = tx_q->dirty_tx;


 if (unlikely(tx_q->tx_skbuff_dma[entry].is_jumbo ||
       (tx_q->tx_skbuff_dma[entry].last_segment &&
        !priv->extend_desc && priv->hwts_tx_en)))
  p->des3 = 0;
}
