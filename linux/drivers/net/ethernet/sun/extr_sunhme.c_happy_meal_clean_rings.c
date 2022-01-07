
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct happy_meal_txd {int tx_flags; int tx_addr; } ;
struct happy_meal_rxd {int rx_addr; } ;
struct happy_meal {int dma_dev; TYPE_1__* happy_block; struct sk_buff** tx_skbs; struct sk_buff** rx_skbs; } ;
struct TYPE_4__ {int nr_frags; } ;
struct TYPE_3__ {struct happy_meal_txd* happy_meal_txd; struct happy_meal_rxd* happy_meal_rxd; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int RX_BUF_ALLOC_SIZE ;
 int RX_RING_SIZE ;
 int TXFLAG_SIZE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (int ,int,int,int ) ;
 int dma_unmap_single (int ,int,int,int ) ;
 int hme_read_desc32 (struct happy_meal*,int *) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void happy_meal_clean_rings(struct happy_meal *hp)
{
 int i;

 for (i = 0; i < RX_RING_SIZE; i++) {
  if (hp->rx_skbs[i] != ((void*)0)) {
   struct sk_buff *skb = hp->rx_skbs[i];
   struct happy_meal_rxd *rxd;
   u32 dma_addr;

   rxd = &hp->happy_block->happy_meal_rxd[i];
   dma_addr = hme_read_desc32(hp, &rxd->rx_addr);
   dma_unmap_single(hp->dma_dev, dma_addr,
      RX_BUF_ALLOC_SIZE, DMA_FROM_DEVICE);
   dev_kfree_skb_any(skb);
   hp->rx_skbs[i] = ((void*)0);
  }
 }

 for (i = 0; i < TX_RING_SIZE; i++) {
  if (hp->tx_skbs[i] != ((void*)0)) {
   struct sk_buff *skb = hp->tx_skbs[i];
   struct happy_meal_txd *txd;
   u32 dma_addr;
   int frag;

   hp->tx_skbs[i] = ((void*)0);

   for (frag = 0; frag <= skb_shinfo(skb)->nr_frags; frag++) {
    txd = &hp->happy_block->happy_meal_txd[i];
    dma_addr = hme_read_desc32(hp, &txd->tx_addr);
    if (!frag)
     dma_unmap_single(hp->dma_dev, dma_addr,
        (hme_read_desc32(hp, &txd->tx_flags)
         & TXFLAG_SIZE),
        DMA_TO_DEVICE);
    else
     dma_unmap_page(hp->dma_dev, dma_addr,
        (hme_read_desc32(hp, &txd->tx_flags)
         & TXFLAG_SIZE),
        DMA_TO_DEVICE);

    if (frag != skb_shinfo(skb)->nr_frags)
     i++;
   }

   dev_kfree_skb_any(skb);
  }
 }
}
