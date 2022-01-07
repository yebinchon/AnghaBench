
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct b43_dmaring {int rx_buffersize; TYPE_2__* ops; TYPE_1__* dev; int tx; } ;
struct b43_dmadesc_meta {int dmaaddr; struct sk_buff* skb; } ;
struct b43_dmadesc_generic {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {int (* fill_descriptor ) (struct b43_dmaring*,struct b43_dmadesc_generic*,int ,int ,int ,int ,int ) ;} ;
struct TYPE_3__ {int wl; } ;


 int B43_WARN_ON (int ) ;
 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 struct sk_buff* __dev_alloc_skb (int ,int ) ;
 scalar_t__ b43_dma_mapping_error (struct b43_dmaring*,int ,int ,int ) ;
 int b43_poison_rx_buffer (struct b43_dmaring*,struct sk_buff*) ;
 int b43err (int ,char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int map_descbuffer (struct b43_dmaring*,int ,int ,int ) ;
 int stub1 (struct b43_dmaring*,struct b43_dmadesc_generic*,int ,int ,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int setup_rx_descbuffer(struct b43_dmaring *ring,
          struct b43_dmadesc_generic *desc,
          struct b43_dmadesc_meta *meta, gfp_t gfp_flags)
{
 dma_addr_t dmaaddr;
 struct sk_buff *skb;

 B43_WARN_ON(ring->tx);

 skb = __dev_alloc_skb(ring->rx_buffersize, gfp_flags);
 if (unlikely(!skb))
  return -ENOMEM;
 b43_poison_rx_buffer(ring, skb);
 dmaaddr = map_descbuffer(ring, skb->data, ring->rx_buffersize, 0);
 if (b43_dma_mapping_error(ring, dmaaddr, ring->rx_buffersize, 0)) {

  gfp_flags |= GFP_DMA;

  dev_kfree_skb_any(skb);

  skb = __dev_alloc_skb(ring->rx_buffersize, gfp_flags);
  if (unlikely(!skb))
   return -ENOMEM;
  b43_poison_rx_buffer(ring, skb);
  dmaaddr = map_descbuffer(ring, skb->data,
      ring->rx_buffersize, 0);
  if (b43_dma_mapping_error(ring, dmaaddr, ring->rx_buffersize, 0)) {
   b43err(ring->dev->wl, "RX DMA buffer allocation failed\n");
   dev_kfree_skb_any(skb);
   return -EIO;
  }
 }

 meta->skb = skb;
 meta->dmaaddr = dmaaddr;
 ring->ops->fill_descriptor(ring, desc, dmaaddr,
       ring->rx_buffersize, 0, 0, 0);

 return 0;
}
