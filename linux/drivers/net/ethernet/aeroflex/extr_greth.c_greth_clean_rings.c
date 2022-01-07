
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct greth_private {int tx_free; size_t tx_last; int dev; int * tx_bufs; int * rx_bufs; struct greth_bd* tx_bd_base; struct sk_buff** tx_skbuff; struct sk_buff** rx_skbuff; scalar_t__ gbit_mac; struct greth_bd* rx_bd_base; } ;
struct greth_bd {int addr; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int GRETH_RXBD_NUM ;
 int GRETH_TXBD_NUM ;
 scalar_t__ MAX_FRAME_SIZE ;
 scalar_t__ NET_IP_ALIGN ;
 void* NEXT_TX (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int greth_read_bd (int *) ;
 int kfree (int ) ;
 int skb_frag_size (int *) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void greth_clean_rings(struct greth_private *greth)
{
 int i;
 struct greth_bd *rx_bdp = greth->rx_bd_base;
 struct greth_bd *tx_bdp = greth->tx_bd_base;

 if (greth->gbit_mac) {


  for (i = 0; i < GRETH_RXBD_NUM; i++, rx_bdp++) {
   if (greth->rx_skbuff[i] != ((void*)0)) {
    dev_kfree_skb(greth->rx_skbuff[i]);
    dma_unmap_single(greth->dev,
       greth_read_bd(&rx_bdp->addr),
       MAX_FRAME_SIZE+NET_IP_ALIGN,
       DMA_FROM_DEVICE);
   }
  }


  while (greth->tx_free < GRETH_TXBD_NUM) {

   struct sk_buff *skb = greth->tx_skbuff[greth->tx_last];
   int nr_frags = skb_shinfo(skb)->nr_frags;
   tx_bdp = greth->tx_bd_base + greth->tx_last;
   greth->tx_last = NEXT_TX(greth->tx_last);

   dma_unmap_single(greth->dev,
      greth_read_bd(&tx_bdp->addr),
      skb_headlen(skb),
      DMA_TO_DEVICE);

   for (i = 0; i < nr_frags; i++) {
    skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
    tx_bdp = greth->tx_bd_base + greth->tx_last;

    dma_unmap_page(greth->dev,
            greth_read_bd(&tx_bdp->addr),
            skb_frag_size(frag),
            DMA_TO_DEVICE);

    greth->tx_last = NEXT_TX(greth->tx_last);
   }
   greth->tx_free += nr_frags+1;
   dev_kfree_skb(skb);
  }


 } else {

  for (i = 0; i < GRETH_RXBD_NUM; i++, rx_bdp++) {
   kfree(greth->rx_bufs[i]);
   dma_unmap_single(greth->dev,
      greth_read_bd(&rx_bdp->addr),
      MAX_FRAME_SIZE,
      DMA_FROM_DEVICE);
  }
  for (i = 0; i < GRETH_TXBD_NUM; i++, tx_bdp++) {
   kfree(greth->tx_bufs[i]);
   dma_unmap_single(greth->dev,
      greth_read_bd(&tx_bdp->addr),
      MAX_FRAME_SIZE,
      DMA_TO_DEVICE);
  }
 }
}
