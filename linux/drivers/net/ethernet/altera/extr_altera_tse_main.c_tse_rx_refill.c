
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct altera_tse_private {unsigned int rx_ring_size; scalar_t__ rx_cons; unsigned int rx_prod; TYPE_2__* rx_ring; TYPE_1__* dmaops; int rx_dma_buf_sz; } ;
struct TYPE_5__ {int * skb; } ;
struct TYPE_4__ {int (* add_rx_desc ) (struct altera_tse_private*,TYPE_2__*) ;} ;


 scalar_t__ likely (int ) ;
 int stub1 (struct altera_tse_private*,TYPE_2__*) ;
 int tse_init_rx_buffer (struct altera_tse_private*,TYPE_2__*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void tse_rx_refill(struct altera_tse_private *priv)
{
 unsigned int rxsize = priv->rx_ring_size;
 unsigned int entry;
 int ret;

 for (; priv->rx_cons - priv->rx_prod > 0;
   priv->rx_prod++) {
  entry = priv->rx_prod % rxsize;
  if (likely(priv->rx_ring[entry].skb == ((void*)0))) {
   ret = tse_init_rx_buffer(priv, &priv->rx_ring[entry],
    priv->rx_dma_buf_sz);
   if (unlikely(ret != 0))
    break;
   priv->dmaops->add_rx_desc(priv, &priv->rx_ring[entry]);
  }
 }
}
