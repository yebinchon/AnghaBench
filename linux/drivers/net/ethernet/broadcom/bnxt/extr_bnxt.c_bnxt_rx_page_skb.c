
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int data; unsigned int data_len; unsigned int tail; } ;
struct page {int dummy; } ;
struct bnxt_rx_ring_info {TYPE_2__* bnapi; int rx_prod; } ;
struct bnxt {int dev; int rx_dir; TYPE_1__* pdev; scalar_t__ rx_dma_offset; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {int * frags; } ;
struct TYPE_5__ {int napi; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_ATTR_WEAK_ORDERING ;
 int GFP_ATOMIC ;
 int NET_IP_ALIGN ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 int bnxt_alloc_rx_data (struct bnxt*,struct bnxt_rx_ring_info*,int ,int ) ;
 int bnxt_reuse_rx_data (struct bnxt_rx_ring_info*,int ,void*) ;
 int dma_unmap_page_attrs (int *,int ,int ,int ,int ) ;
 unsigned int eth_get_headlen (int ,int *,unsigned int) ;
 int memcpy (int,int *,int) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 void* page_address (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int,unsigned int,int ) ;
 int skb_frag_off_add (int *,unsigned int) ;
 int skb_frag_size_sub (int *,unsigned int) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *bnxt_rx_page_skb(struct bnxt *bp,
     struct bnxt_rx_ring_info *rxr,
     u16 cons, void *data, u8 *data_ptr,
     dma_addr_t dma_addr,
     unsigned int offset_and_len)
{
 unsigned int payload = offset_and_len >> 16;
 unsigned int len = offset_and_len & 0xffff;
 skb_frag_t *frag;
 struct page *page = data;
 u16 prod = rxr->rx_prod;
 struct sk_buff *skb;
 int off, err;

 err = bnxt_alloc_rx_data(bp, rxr, prod, GFP_ATOMIC);
 if (unlikely(err)) {
  bnxt_reuse_rx_data(rxr, cons, data);
  return ((void*)0);
 }
 dma_addr -= bp->rx_dma_offset;
 dma_unmap_page_attrs(&bp->pdev->dev, dma_addr, PAGE_SIZE, bp->rx_dir,
        DMA_ATTR_WEAK_ORDERING);

 if (unlikely(!payload))
  payload = eth_get_headlen(bp->dev, data_ptr, len);

 skb = napi_alloc_skb(&rxr->bnapi->napi, payload);
 if (!skb) {
  __free_page(page);
  return ((void*)0);
 }

 off = (void *)data_ptr - page_address(page);
 skb_add_rx_frag(skb, 0, page, off, len, PAGE_SIZE);
 memcpy(skb->data - NET_IP_ALIGN, data_ptr - NET_IP_ALIGN,
        payload + NET_IP_ALIGN);

 frag = &skb_shinfo(skb)->frags[0];
 skb_frag_size_sub(frag, payload);
 skb_frag_off_add(frag, payload);
 skb->data_len -= payload;
 skb->tail += payload;

 return skb;
}
