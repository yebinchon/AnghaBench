
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {TYPE_1__* tx_skbuff_dma; int ** tx_skbuff; } ;
struct stmmac_priv {int device; struct stmmac_tx_queue* tx_queue; } ;
struct TYPE_2__ {int map_as_page; scalar_t__ buf; int len; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int ,scalar_t__,int ,int ) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void stmmac_free_tx_buffer(struct stmmac_priv *priv, u32 queue, int i)
{
 struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];

 if (tx_q->tx_skbuff_dma[i].buf) {
  if (tx_q->tx_skbuff_dma[i].map_as_page)
   dma_unmap_page(priv->device,
           tx_q->tx_skbuff_dma[i].buf,
           tx_q->tx_skbuff_dma[i].len,
           DMA_TO_DEVICE);
  else
   dma_unmap_single(priv->device,
      tx_q->tx_skbuff_dma[i].buf,
      tx_q->tx_skbuff_dma[i].len,
      DMA_TO_DEVICE);
 }

 if (tx_q->tx_skbuff[i]) {
  dev_kfree_skb_any(tx_q->tx_skbuff[i]);
  tx_q->tx_skbuff[i] = ((void*)0);
  tx_q->tx_skbuff_dma[i].buf = 0;
  tx_q->tx_skbuff_dma[i].map_as_page = 0;
 }
}
