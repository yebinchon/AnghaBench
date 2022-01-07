
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int data; } ;
struct hmeal_init_block {int * happy_meal_txd; int * happy_meal_rxd; } ;
struct happy_meal {int dma_dev; struct sk_buff** rx_skbs; scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; struct hmeal_init_block* happy_block; } ;


 int DMA_FROM_DEVICE ;
 int ETH_FRAME_LEN ;
 int GFP_ATOMIC ;
 int HMD (char*) ;
 int RXFLAG_OWN ;
 int RX_BUF_ALLOC_SIZE ;
 int RX_OFFSET ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 struct sk_buff* happy_meal_alloc_skb (int,int ) ;
 int happy_meal_clean_rings (struct happy_meal*) ;
 int hme_write_rxd (struct happy_meal*,int *,int,int ) ;
 int hme_write_txd (struct happy_meal*,int *,int ,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void happy_meal_init_rings(struct happy_meal *hp)
{
 struct hmeal_init_block *hb = hp->happy_block;
 int i;

 HMD(("happy_meal_init_rings: counters to zero, "));
 hp->rx_new = hp->rx_old = hp->tx_new = hp->tx_old = 0;


 HMD(("clean, "));
 happy_meal_clean_rings(hp);


 HMD(("init rxring, "));
 for (i = 0; i < RX_RING_SIZE; i++) {
  struct sk_buff *skb;
  u32 mapping;

  skb = happy_meal_alloc_skb(RX_BUF_ALLOC_SIZE, GFP_ATOMIC);
  if (!skb) {
   hme_write_rxd(hp, &hb->happy_meal_rxd[i], 0, 0);
   continue;
  }
  hp->rx_skbs[i] = skb;


  skb_put(skb, (ETH_FRAME_LEN + RX_OFFSET + 4));
  mapping = dma_map_single(hp->dma_dev, skb->data, RX_BUF_ALLOC_SIZE,
      DMA_FROM_DEVICE);
  if (dma_mapping_error(hp->dma_dev, mapping)) {
   dev_kfree_skb_any(skb);
   hme_write_rxd(hp, &hb->happy_meal_rxd[i], 0, 0);
   continue;
  }
  hme_write_rxd(hp, &hb->happy_meal_rxd[i],
         (RXFLAG_OWN | ((RX_BUF_ALLOC_SIZE - RX_OFFSET) << 16)),
         mapping);
  skb_reserve(skb, RX_OFFSET);
 }

 HMD(("init txring, "));
 for (i = 0; i < TX_RING_SIZE; i++)
  hme_write_txd(hp, &hb->happy_meal_txd[i], 0, 0);

 HMD(("done\n"));
}
