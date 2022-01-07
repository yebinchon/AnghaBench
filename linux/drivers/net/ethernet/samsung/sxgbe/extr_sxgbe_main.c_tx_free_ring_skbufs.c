
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sxgbe_tx_queue {scalar_t__* tx_skbuff_dma; int ** tx_skbuff; struct sxgbe_tx_norm_desc* dma_tx; struct sxgbe_priv_data* priv_ptr; } ;
struct sxgbe_tx_norm_desc {int dummy; } ;
struct sxgbe_priv_data {int dma_tx_size; TYPE_2__* hw; int device; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {int (* get_tx_len ) (struct sxgbe_tx_norm_desc*) ;} ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int stub1 (struct sxgbe_tx_norm_desc*) ;

__attribute__((used)) static void tx_free_ring_skbufs(struct sxgbe_tx_queue *txqueue)
{
 int dma_desc;
 struct sxgbe_priv_data *priv = txqueue->priv_ptr;
 int tx_rsize = priv->dma_tx_size;

 for (dma_desc = 0; dma_desc < tx_rsize; dma_desc++) {
  struct sxgbe_tx_norm_desc *tdesc = txqueue->dma_tx + dma_desc;

  if (txqueue->tx_skbuff_dma[dma_desc])
   dma_unmap_single(priv->device,
      txqueue->tx_skbuff_dma[dma_desc],
      priv->hw->desc->get_tx_len(tdesc),
      DMA_TO_DEVICE);

  dev_kfree_skb_any(txqueue->tx_skbuff[dma_desc]);
  txqueue->tx_skbuff[dma_desc] = ((void*)0);
  txqueue->tx_skbuff_dma[dma_desc] = 0;
 }
}
