
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct bmac_init_block {TYPE_3__* be_txd; TYPE_2__* be_rxd; } ;
struct bigmac {TYPE_1__* bigmac_op; struct sk_buff** rx_skbs; scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; struct bmac_init_block* bmac_block; } ;
typedef int gfp_t ;
struct TYPE_6__ {scalar_t__ tx_addr; scalar_t__ tx_flags; } ;
struct TYPE_5__ {int rx_flags; int rx_addr; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int ETH_FRAME_LEN ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int RXD_LENGTH ;
 int RXD_OWN ;
 int RX_BUF_ALLOC_SIZE ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 struct sk_buff* big_mac_alloc_skb (int,int ) ;
 int bigmac_clean_rings (struct bigmac*) ;
 int dma_map_single (int *,int ,int,int ) ;
 scalar_t__ in_interrupt () ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void bigmac_init_rings(struct bigmac *bp, int from_irq)
{
 struct bmac_init_block *bb = bp->bmac_block;
 int i;
 gfp_t gfp_flags = GFP_KERNEL;

 if (from_irq || in_interrupt())
  gfp_flags = GFP_ATOMIC;

 bp->rx_new = bp->rx_old = bp->tx_new = bp->tx_old = 0;


 bigmac_clean_rings(bp);


 for (i = 0; i < RX_RING_SIZE; i++) {
  struct sk_buff *skb;

  skb = big_mac_alloc_skb(RX_BUF_ALLOC_SIZE, gfp_flags);
  if (!skb)
   continue;

  bp->rx_skbs[i] = skb;


  skb_put(skb, ETH_FRAME_LEN);
  skb_reserve(skb, 34);

  bb->be_rxd[i].rx_addr =
   dma_map_single(&bp->bigmac_op->dev,
           skb->data,
           RX_BUF_ALLOC_SIZE - 34,
           DMA_FROM_DEVICE);
  bb->be_rxd[i].rx_flags =
   (RXD_OWN | ((RX_BUF_ALLOC_SIZE - 34) & RXD_LENGTH));
 }

 for (i = 0; i < TX_RING_SIZE; i++)
  bb->be_txd[i].tx_flags = bb->be_txd[i].tx_addr = 0;
}
