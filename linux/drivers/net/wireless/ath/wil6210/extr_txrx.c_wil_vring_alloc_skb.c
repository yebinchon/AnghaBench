
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct wil_ring {TYPE_4__* ctx; TYPE_2__* va; } ;
struct wil6210_priv {unsigned int rx_buf_len; } ;
struct TYPE_7__ {int d0; int length; scalar_t__ status; int addr; } ;
struct vring_rx_desc {TYPE_3__ dma; } ;
struct sk_buff {int len; int data; int ip_summed; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {struct sk_buff* skb; } ;
struct TYPE_5__ {struct vring_rx_desc legacy; } ;
struct TYPE_6__ {TYPE_1__ rx; } ;


 int CHECKSUM_NONE ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 unsigned int ETH_HLEN ;
 int RX_DMA_D0_CMD_DMA_IT ;
 int RX_DMA_D0_CMD_DMA_RT ;
 int cpu_to_le16 (unsigned int) ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int wil_desc_addr_set (int *,int ) ;
 unsigned int wil_rx_snaplen () ;
 struct device* wil_to_dev (struct wil6210_priv*) ;

__attribute__((used)) static int wil_vring_alloc_skb(struct wil6210_priv *wil, struct wil_ring *vring,
          u32 i, int headroom)
{
 struct device *dev = wil_to_dev(wil);
 unsigned int sz = wil->rx_buf_len + ETH_HLEN + wil_rx_snaplen();
 struct vring_rx_desc dd, *d = &dd;
 volatile struct vring_rx_desc *_d = &vring->va[i].rx.legacy;
 dma_addr_t pa;
 struct sk_buff *skb = dev_alloc_skb(sz + headroom);

 if (unlikely(!skb))
  return -ENOMEM;

 skb_reserve(skb, headroom);
 skb_put(skb, sz);





 skb->ip_summed = CHECKSUM_NONE;

 pa = dma_map_single(dev, skb->data, skb->len, DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(dev, pa))) {
  kfree_skb(skb);
  return -ENOMEM;
 }

 d->dma.d0 = RX_DMA_D0_CMD_DMA_RT | RX_DMA_D0_CMD_DMA_IT;
 wil_desc_addr_set(&d->dma.addr, pa);



 d->dma.status = 0;
 d->dma.length = cpu_to_le16(sz);
 *_d = *d;
 vring->ctx[i].skb = skb;

 return 0;
}
