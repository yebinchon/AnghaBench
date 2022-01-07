
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txbd8 {int length; int bufPtr; scalar_t__ lstatus; } ;
struct gfar_private {int dev; } ;
struct gfar_priv_tx_q {int tx_ring_size; int ** tx_skbuff; struct txbd8* tx_bd_base; int dev; } ;
struct TYPE_2__ {int nr_frags; } ;


 int DMA_TO_DEVICE ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int **) ;
 struct gfar_private* netdev_priv (int ) ;
 TYPE_1__* skb_shinfo (int *) ;

__attribute__((used)) static void free_skb_tx_queue(struct gfar_priv_tx_q *tx_queue)
{
 struct txbd8 *txbdp;
 struct gfar_private *priv = netdev_priv(tx_queue->dev);
 int i, j;

 txbdp = tx_queue->tx_bd_base;

 for (i = 0; i < tx_queue->tx_ring_size; i++) {
  if (!tx_queue->tx_skbuff[i])
   continue;

  dma_unmap_single(priv->dev, be32_to_cpu(txbdp->bufPtr),
     be16_to_cpu(txbdp->length), DMA_TO_DEVICE);
  txbdp->lstatus = 0;
  for (j = 0; j < skb_shinfo(tx_queue->tx_skbuff[i])->nr_frags;
       j++) {
   txbdp++;
   dma_unmap_page(priv->dev, be32_to_cpu(txbdp->bufPtr),
           be16_to_cpu(txbdp->length),
           DMA_TO_DEVICE);
  }
  txbdp++;
  dev_kfree_skb_any(tx_queue->tx_skbuff[i]);
  tx_queue->tx_skbuff[i] = ((void*)0);
 }
 kfree(tx_queue->tx_skbuff);
 tx_queue->tx_skbuff = ((void*)0);
}
