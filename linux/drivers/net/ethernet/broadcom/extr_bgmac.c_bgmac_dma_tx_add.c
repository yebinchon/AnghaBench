
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; scalar_t__ ip_summed; int data; } ;
struct TYPE_5__ {int tx_errors; int tx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct device {int dummy; } ;
struct bgmac_slot_info {int dma_addr; struct sk_buff* skb; } ;
struct bgmac_dma_ring {int end; int start; int mmio_base; TYPE_1__* cpu_base; struct bgmac_slot_info* slots; scalar_t__ index_base; } ;
struct bgmac_dma_desc {int dummy; } ;
struct bgmac {struct net_device* net_dev; struct device* dma_dev; } ;
typedef int skb_frag_t ;
typedef int netdev_tx_t ;
struct TYPE_6__ {int nr_frags; int * frags; } ;
struct TYPE_4__ {int ctl1; } ;


 int BGMAC_DESC_CTL0_EOF ;
 int BGMAC_DESC_CTL0_IOC ;
 int BGMAC_DESC_CTL0_SOF ;
 int BGMAC_DESC_CTL1_LEN ;
 int BGMAC_DMA_TX_INDEX ;
 int BGMAC_TX_RING_SLOTS ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int DMA_TO_DEVICE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int bgmac_dma_tx_add_buf (struct bgmac*,struct bgmac_dma_ring*,int,int,int) ;
 int bgmac_write (struct bgmac*,int,scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (struct device*,int ,int,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int dma_unmap_page (struct device*,int ,int,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int le32_to_cpu (int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_sent_queue (struct net_device*,int) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_checksum_help (struct sk_buff*) ;
 int skb_frag_dma_map (struct device*,int *,int ,int,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t bgmac_dma_tx_add(struct bgmac *bgmac,
        struct bgmac_dma_ring *ring,
        struct sk_buff *skb)
{
 struct device *dma_dev = bgmac->dma_dev;
 struct net_device *net_dev = bgmac->net_dev;
 int index = ring->end % BGMAC_TX_RING_SLOTS;
 struct bgmac_slot_info *slot = &ring->slots[index];
 int nr_frags;
 u32 flags;
 int i;

 if (skb->len > BGMAC_DESC_CTL1_LEN) {
  netdev_err(bgmac->net_dev, "Too long skb (%d)\n", skb->len);
  goto err_drop;
 }

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  skb_checksum_help(skb);

 nr_frags = skb_shinfo(skb)->nr_frags;




 if (ring->end - ring->start + nr_frags + 1 >= BGMAC_TX_RING_SLOTS) {
  netdev_err(bgmac->net_dev, "TX ring is full, queue should be stopped!\n");
  netif_stop_queue(net_dev);
  return NETDEV_TX_BUSY;
 }

 slot->dma_addr = dma_map_single(dma_dev, skb->data, skb_headlen(skb),
     DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(dma_dev, slot->dma_addr)))
  goto err_dma_head;

 flags = BGMAC_DESC_CTL0_SOF;
 if (!nr_frags)
  flags |= BGMAC_DESC_CTL0_EOF | BGMAC_DESC_CTL0_IOC;

 bgmac_dma_tx_add_buf(bgmac, ring, index, skb_headlen(skb), flags);
 flags = 0;

 for (i = 0; i < nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  int len = skb_frag_size(frag);

  index = (index + 1) % BGMAC_TX_RING_SLOTS;
  slot = &ring->slots[index];
  slot->dma_addr = skb_frag_dma_map(dma_dev, frag, 0,
        len, DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(dma_dev, slot->dma_addr)))
   goto err_dma;

  if (i == nr_frags - 1)
   flags |= BGMAC_DESC_CTL0_EOF | BGMAC_DESC_CTL0_IOC;

  bgmac_dma_tx_add_buf(bgmac, ring, index, len, flags);
 }

 slot->skb = skb;
 ring->end += nr_frags + 1;
 netdev_sent_queue(net_dev, skb->len);

 wmb();




 bgmac_write(bgmac, ring->mmio_base + BGMAC_DMA_TX_INDEX,
      ring->index_base +
      (ring->end % BGMAC_TX_RING_SLOTS) *
      sizeof(struct bgmac_dma_desc));

 if (ring->end - ring->start >= BGMAC_TX_RING_SLOTS - 8)
  netif_stop_queue(net_dev);

 return NETDEV_TX_OK;

err_dma:
 dma_unmap_single(dma_dev, slot->dma_addr, skb_headlen(skb),
    DMA_TO_DEVICE);

 while (i-- > 0) {
  int index = (ring->end + i) % BGMAC_TX_RING_SLOTS;
  struct bgmac_slot_info *slot = &ring->slots[index];
  u32 ctl1 = le32_to_cpu(ring->cpu_base[index].ctl1);
  int len = ctl1 & BGMAC_DESC_CTL1_LEN;

  dma_unmap_page(dma_dev, slot->dma_addr, len, DMA_TO_DEVICE);
 }

err_dma_head:
 netdev_err(bgmac->net_dev, "Mapping error of skb on ring 0x%X\n",
     ring->mmio_base);

err_drop:
 dev_kfree_skb(skb);
 net_dev->stats.tx_dropped++;
 net_dev->stats.tx_errors++;
 return NETDEV_TX_OK;
}
