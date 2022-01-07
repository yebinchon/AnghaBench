
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int protocol; } ;
struct device {int dummy; } ;
struct bgmac_slot_info {int dma_addr; struct bgmac_rx_header* buf; } ;
struct bgmac_rx_header {int flags; int len; } ;
struct bgmac_dma_ring {int start; struct bgmac_slot_info* slots; scalar_t__ index_base; scalar_t__ mmio_base; } ;
struct bgmac_dma_desc {int dummy; } ;
struct bgmac {int napi; TYPE_2__* net_dev; struct device* dma_dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int rx_errors; int rx_length_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int BGMAC_DMA_RX_STATDPTR ;
 scalar_t__ BGMAC_DMA_RX_STATUS ;
 int BGMAC_RX_ALLOC_SIZE ;
 int BGMAC_RX_BUF_OFFSET ;
 int BGMAC_RX_BUF_SIZE ;
 int BGMAC_RX_FRAME_OFFSET ;
 size_t BGMAC_RX_RING_SLOTS ;
 int DMA_FROM_DEVICE ;
 scalar_t__ ETH_FCS_LEN ;
 int bgmac_dma_rx_poison_buf (struct device*,struct bgmac_slot_info*) ;
 int bgmac_dma_rx_setup_desc (struct bgmac*,struct bgmac_dma_ring*,size_t) ;
 scalar_t__ bgmac_dma_rx_skb_for_slot (struct bgmac*,struct bgmac_slot_info*) ;
 int bgmac_dma_rx_update_index (struct bgmac*,struct bgmac_dma_ring*) ;
 int bgmac_read (struct bgmac*,scalar_t__) ;
 struct sk_buff* build_skb (void*,int) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_2__*) ;
 int le16_to_cpu (int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netdev_err (TYPE_2__*,char*,...) ;
 int put_page (int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int virt_to_head_page (void*) ;

__attribute__((used)) static int bgmac_dma_rx_read(struct bgmac *bgmac, struct bgmac_dma_ring *ring,
        int weight)
{
 u32 end_slot;
 int handled = 0;

 end_slot = bgmac_read(bgmac, ring->mmio_base + BGMAC_DMA_RX_STATUS);
 end_slot &= BGMAC_DMA_RX_STATDPTR;
 end_slot -= ring->index_base;
 end_slot &= BGMAC_DMA_RX_STATDPTR;
 end_slot /= sizeof(struct bgmac_dma_desc);

 while (ring->start != end_slot) {
  struct device *dma_dev = bgmac->dma_dev;
  struct bgmac_slot_info *slot = &ring->slots[ring->start];
  struct bgmac_rx_header *rx = slot->buf + BGMAC_RX_BUF_OFFSET;
  struct sk_buff *skb;
  void *buf = slot->buf;
  dma_addr_t dma_addr = slot->dma_addr;
  u16 len, flags;

  do {

   if (bgmac_dma_rx_skb_for_slot(bgmac, slot)) {
    bgmac_dma_rx_poison_buf(dma_dev, slot);
    break;
   }


   dma_unmap_single(dma_dev, dma_addr,
      BGMAC_RX_BUF_SIZE, DMA_FROM_DEVICE);


   len = le16_to_cpu(rx->len);
   flags = le16_to_cpu(rx->flags);


   if (len == 0xdead && flags == 0xbeef) {
    netdev_err(bgmac->net_dev, "Found poisoned packet at slot %d, DMA issue!\n",
        ring->start);
    put_page(virt_to_head_page(buf));
    bgmac->net_dev->stats.rx_errors++;
    break;
   }

   if (len > BGMAC_RX_ALLOC_SIZE) {
    netdev_err(bgmac->net_dev, "Found oversized packet at slot %d, DMA issue!\n",
        ring->start);
    put_page(virt_to_head_page(buf));
    bgmac->net_dev->stats.rx_length_errors++;
    bgmac->net_dev->stats.rx_errors++;
    break;
   }


   len -= ETH_FCS_LEN;

   skb = build_skb(buf, BGMAC_RX_ALLOC_SIZE);
   if (unlikely(!skb)) {
    netdev_err(bgmac->net_dev, "build_skb failed\n");
    put_page(virt_to_head_page(buf));
    bgmac->net_dev->stats.rx_errors++;
    break;
   }
   skb_put(skb, BGMAC_RX_FRAME_OFFSET +
    BGMAC_RX_BUF_OFFSET + len);
   skb_pull(skb, BGMAC_RX_FRAME_OFFSET +
     BGMAC_RX_BUF_OFFSET);

   skb_checksum_none_assert(skb);
   skb->protocol = eth_type_trans(skb, bgmac->net_dev);
   bgmac->net_dev->stats.rx_bytes += len;
   bgmac->net_dev->stats.rx_packets++;
   napi_gro_receive(&bgmac->napi, skb);
   handled++;
  } while (0);

  bgmac_dma_rx_setup_desc(bgmac, ring, ring->start);

  if (++ring->start >= BGMAC_RX_RING_SLOTS)
   ring->start = 0;

  if (handled >= weight)
   break;
 }

 bgmac_dma_rx_update_index(bgmac, ring);

 return handled;
}
