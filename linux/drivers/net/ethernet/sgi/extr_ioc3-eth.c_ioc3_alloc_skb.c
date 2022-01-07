
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ioc3_private {int dma_dev; } ;
struct ioc3_erxbuf {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IOC3_DMA_XFER_LEN ;
 scalar_t__ RX_BUF_SIZE ;
 int RX_OFFSET ;
 int aligned_rx_skb_addr (unsigned long) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static inline int ioc3_alloc_skb(struct ioc3_private *ip, struct sk_buff **skb,
     struct ioc3_erxbuf **rxb, dma_addr_t *rxb_dma)
{
 struct sk_buff *new_skb;
 dma_addr_t d;
 int offset;

 new_skb = alloc_skb(RX_BUF_SIZE + IOC3_DMA_XFER_LEN - 1, GFP_ATOMIC);
 if (!new_skb)
  return -ENOMEM;


 offset = aligned_rx_skb_addr((unsigned long)new_skb->data);
 if (offset)
  skb_reserve(new_skb, offset);

 d = dma_map_single(ip->dma_dev, new_skb->data,
      RX_BUF_SIZE, DMA_FROM_DEVICE);

 if (dma_mapping_error(ip->dma_dev, d)) {
  dev_kfree_skb_any(new_skb);
  return -ENOMEM;
 }
 *rxb_dma = d;
 *rxb = (struct ioc3_erxbuf *)new_skb->data;
 skb_reserve(new_skb, RX_OFFSET);
 *skb = new_skb;

 return 0;
}
