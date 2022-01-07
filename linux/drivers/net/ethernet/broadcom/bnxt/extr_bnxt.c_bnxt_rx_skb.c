
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct bnxt_rx_ring_info {int rx_prod; } ;
struct bnxt {int rx_offset; int rx_dir; int rx_buf_use_size; TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_ATTR_WEAK_ORDERING ;
 int GFP_ATOMIC ;
 int bnxt_alloc_rx_data (struct bnxt*,struct bnxt_rx_ring_info*,int ,int ) ;
 int bnxt_reuse_rx_data (struct bnxt_rx_ring_info*,int ,void*) ;
 struct sk_buff* build_skb (void*,int ) ;
 int dma_unmap_single_attrs (int *,int ,int ,int ,int ) ;
 int kfree (void*) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *bnxt_rx_skb(struct bnxt *bp,
       struct bnxt_rx_ring_info *rxr, u16 cons,
       void *data, u8 *data_ptr,
       dma_addr_t dma_addr,
       unsigned int offset_and_len)
{
 u16 prod = rxr->rx_prod;
 struct sk_buff *skb;
 int err;

 err = bnxt_alloc_rx_data(bp, rxr, prod, GFP_ATOMIC);
 if (unlikely(err)) {
  bnxt_reuse_rx_data(rxr, cons, data);
  return ((void*)0);
 }

 skb = build_skb(data, 0);
 dma_unmap_single_attrs(&bp->pdev->dev, dma_addr, bp->rx_buf_use_size,
          bp->rx_dir, DMA_ATTR_WEAK_ORDERING);
 if (!skb) {
  kfree(data);
  return ((void*)0);
 }

 skb_reserve(skb, bp->rx_offset);
 skb_put(skb, offset_and_len & 0xffff);
 return skb;
}
