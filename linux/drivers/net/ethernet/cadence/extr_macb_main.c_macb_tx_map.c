
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ data; } ;
struct macb_tx_skb {unsigned int size; int mapped_as_page; void* mapping; struct sk_buff* skb; } ;
struct macb_queue {unsigned int tx_head; struct macb_tx_skb* tx_skb; } ;
struct macb_dma_desc {scalar_t__ ctrl; } ;
struct macb {int tx_ring_size; TYPE_3__* dev; TYPE_1__* pdev; int max_tx_length; } ;
typedef int skb_frag_t ;
typedef void* dma_addr_t ;
struct TYPE_8__ {scalar_t__ protocol; } ;
struct TYPE_7__ {int features; } ;
struct TYPE_6__ {unsigned int nr_frags; unsigned int gso_size; int * frags; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int DMA_TO_DEVICE ;
 unsigned int ETH_FCS_LEN ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ MACB_BF (int ,unsigned int) ;
 scalar_t__ MACB_BIT (int ) ;
 scalar_t__ MACB_LSO_TSO_ENABLE ;
 scalar_t__ MACB_LSO_UFO_ENABLE ;
 int MSS_MFS ;
 int NETIF_F_HW_CSUM ;
 int TX_LAST ;
 int TX_LSO ;
 int TX_NOCRC ;
 int TX_TCP_SEQ_SRC ;
 int TX_USED ;
 int TX_WRAP ;
 void* dma_map_single (int *,scalar_t__,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,void*) ;
 TYPE_4__* ip_hdr (struct sk_buff*) ;
 int macb_set_addr (struct macb*,struct macb_dma_desc*,void*) ;
 struct macb_dma_desc* macb_tx_desc (struct macb_queue*,unsigned int) ;
 unsigned int macb_tx_ring_wrap (struct macb*,unsigned int) ;
 struct macb_tx_skb* macb_tx_skb (struct macb_queue*,unsigned int) ;
 int macb_tx_unmap (struct macb*,struct macb_tx_skb*) ;
 unsigned int min (unsigned int,int ) ;
 int netdev_err (TYPE_3__*,char*) ;
 void* skb_frag_dma_map (int *,int const*,unsigned int,unsigned int,int ) ;
 unsigned int skb_frag_size (int const*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static unsigned int macb_tx_map(struct macb *bp,
    struct macb_queue *queue,
    struct sk_buff *skb,
    unsigned int hdrlen)
{
 dma_addr_t mapping;
 unsigned int len, entry, i, tx_head = queue->tx_head;
 struct macb_tx_skb *tx_skb = ((void*)0);
 struct macb_dma_desc *desc;
 unsigned int offset, size, count = 0;
 unsigned int f, nr_frags = skb_shinfo(skb)->nr_frags;
 unsigned int eof = 1, mss_mfs = 0;
 u32 ctrl, lso_ctrl = 0, seq_ctrl = 0;


 if (skb_shinfo(skb)->gso_size != 0) {
  if (ip_hdr(skb)->protocol == IPPROTO_UDP)

   lso_ctrl = MACB_LSO_UFO_ENABLE;
  else

   lso_ctrl = MACB_LSO_TSO_ENABLE;
 }


 len = skb_headlen(skb);


 size = hdrlen;

 offset = 0;
 while (len) {
  entry = macb_tx_ring_wrap(bp, tx_head);
  tx_skb = &queue->tx_skb[entry];

  mapping = dma_map_single(&bp->pdev->dev,
      skb->data + offset,
      size, DMA_TO_DEVICE);
  if (dma_mapping_error(&bp->pdev->dev, mapping))
   goto dma_error;


  tx_skb->skb = ((void*)0);
  tx_skb->mapping = mapping;
  tx_skb->size = size;
  tx_skb->mapped_as_page = 0;

  len -= size;
  offset += size;
  count++;
  tx_head++;

  size = min(len, bp->max_tx_length);
 }


 for (f = 0; f < nr_frags; f++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[f];

  len = skb_frag_size(frag);
  offset = 0;
  while (len) {
   size = min(len, bp->max_tx_length);
   entry = macb_tx_ring_wrap(bp, tx_head);
   tx_skb = &queue->tx_skb[entry];

   mapping = skb_frag_dma_map(&bp->pdev->dev, frag,
         offset, size, DMA_TO_DEVICE);
   if (dma_mapping_error(&bp->pdev->dev, mapping))
    goto dma_error;


   tx_skb->skb = ((void*)0);
   tx_skb->mapping = mapping;
   tx_skb->size = size;
   tx_skb->mapped_as_page = 1;

   len -= size;
   offset += size;
   count++;
   tx_head++;
  }
 }


 if (unlikely(!tx_skb)) {
  netdev_err(bp->dev, "BUG! empty skb!\n");
  return 0;
 }


 tx_skb->skb = skb;
 i = tx_head;
 entry = macb_tx_ring_wrap(bp, i);
 ctrl = MACB_BIT(TX_USED);
 desc = macb_tx_desc(queue, entry);
 desc->ctrl = ctrl;

 if (lso_ctrl) {
  if (lso_ctrl == MACB_LSO_UFO_ENABLE)

   mss_mfs = skb_shinfo(skb)->gso_size +
     skb_transport_offset(skb) +
     ETH_FCS_LEN;
  else {
   mss_mfs = skb_shinfo(skb)->gso_size;



   seq_ctrl = 0;
  }
 }

 do {
  i--;
  entry = macb_tx_ring_wrap(bp, i);
  tx_skb = &queue->tx_skb[entry];
  desc = macb_tx_desc(queue, entry);

  ctrl = (u32)tx_skb->size;
  if (eof) {
   ctrl |= MACB_BIT(TX_LAST);
   eof = 0;
  }
  if (unlikely(entry == (bp->tx_ring_size - 1)))
   ctrl |= MACB_BIT(TX_WRAP);


  if (i == queue->tx_head) {
   ctrl |= MACB_BF(TX_LSO, lso_ctrl);
   ctrl |= MACB_BF(TX_TCP_SEQ_SRC, seq_ctrl);
   if ((bp->dev->features & NETIF_F_HW_CSUM) &&
       skb->ip_summed != CHECKSUM_PARTIAL && !lso_ctrl)
    ctrl |= MACB_BIT(TX_NOCRC);
  } else



   ctrl |= MACB_BF(MSS_MFS, mss_mfs);


  macb_set_addr(bp, desc, tx_skb->mapping);



  wmb();
  desc->ctrl = ctrl;
 } while (i != queue->tx_head);

 queue->tx_head = tx_head;

 return count;

dma_error:
 netdev_err(bp->dev, "TX DMA map failed\n");

 for (i = queue->tx_head; i != tx_head; i++) {
  tx_skb = macb_tx_skb(queue, i);

  macb_tx_unmap(bp, tx_skb);
 }

 return 0;
}
