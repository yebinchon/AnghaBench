
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct rx_header {int flags; int len; } ;
struct ring_info {int mapping; struct sk_buff* skb; } ;
struct dma_desc {int dummy; } ;
struct b44 {int rx_cons; int rx_prod; TYPE_3__* dev; int napi; TYPE_2__* sdev; int force_copybreak; struct ring_info* rx_buffers; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int rx_dropped; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {int dma_dev; } ;


 int B44_DMARX_PTR ;
 int B44_DMARX_STAT ;
 int B44_RX_RING_SIZE ;
 int DMARX_STAT_CDMASK ;
 int DMA_FROM_DEVICE ;
 scalar_t__ RX_COPY_THRESHOLD ;
 int RX_FLAG_ERRORS ;
 scalar_t__ RX_PKT_BUF_SZ ;
 scalar_t__ RX_PKT_OFFSET ;
 int b44_alloc_rx_skb (struct b44*,int,int) ;
 int b44_recycle_rx (struct b44*,int,int) ;
 int barrier () ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;
 int cpu_to_le16 (int ) ;
 int dma_sync_single_for_cpu (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 scalar_t__ le16_to_cpu (int ) ;
 struct sk_buff* napi_alloc_skb (int *,scalar_t__) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,scalar_t__,scalar_t__,scalar_t__) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int b44_rx(struct b44 *bp, int budget)
{
 int received;
 u32 cons, prod;

 received = 0;
 prod = br32(bp, B44_DMARX_STAT) & DMARX_STAT_CDMASK;
 prod /= sizeof(struct dma_desc);
 cons = bp->rx_cons;

 while (cons != prod && budget > 0) {
  struct ring_info *rp = &bp->rx_buffers[cons];
  struct sk_buff *skb = rp->skb;
  dma_addr_t map = rp->mapping;
  struct rx_header *rh;
  u16 len;

  dma_sync_single_for_cpu(bp->sdev->dma_dev, map,
     RX_PKT_BUF_SZ,
     DMA_FROM_DEVICE);
  rh = (struct rx_header *) skb->data;
  len = le16_to_cpu(rh->len);
  if ((len > (RX_PKT_BUF_SZ - RX_PKT_OFFSET)) ||
      (rh->flags & cpu_to_le16(RX_FLAG_ERRORS))) {
  drop_it:
   b44_recycle_rx(bp, cons, bp->rx_prod);
  drop_it_no_recycle:
   bp->dev->stats.rx_dropped++;
   goto next_pkt;
  }

  if (len == 0) {
   int i = 0;

   do {
    udelay(2);
    barrier();
    len = le16_to_cpu(rh->len);
   } while (len == 0 && i++ < 5);
   if (len == 0)
    goto drop_it;
  }


  len -= 4;

  if (!bp->force_copybreak && len > RX_COPY_THRESHOLD) {
   int skb_size;
   skb_size = b44_alloc_rx_skb(bp, cons, bp->rx_prod);
   if (skb_size < 0)
    goto drop_it;
   dma_unmap_single(bp->sdev->dma_dev, map,
      skb_size, DMA_FROM_DEVICE);

   skb_put(skb, len + RX_PKT_OFFSET);
   skb_pull(skb, RX_PKT_OFFSET);
  } else {
   struct sk_buff *copy_skb;

   b44_recycle_rx(bp, cons, bp->rx_prod);
   copy_skb = napi_alloc_skb(&bp->napi, len);
   if (copy_skb == ((void*)0))
    goto drop_it_no_recycle;

   skb_put(copy_skb, len);

   skb_copy_from_linear_data_offset(skb, RX_PKT_OFFSET,
        copy_skb->data, len);
   skb = copy_skb;
  }
  skb_checksum_none_assert(skb);
  skb->protocol = eth_type_trans(skb, bp->dev);
  netif_receive_skb(skb);
  received++;
  budget--;
 next_pkt:
  bp->rx_prod = (bp->rx_prod + 1) &
   (B44_RX_RING_SIZE - 1);
  cons = (cons + 1) & (B44_RX_RING_SIZE - 1);
 }

 bp->rx_cons = cons;
 bw32(bp, B44_DMARX_PTR, cons * sizeof(struct dma_desc));

 return received;
}
