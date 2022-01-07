
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {unsigned int len; unsigned int tail; unsigned int data_len; int truesize; } ;
struct bnx2_sw_pg {int * page; } ;
struct bnx2_rx_ring_info {size_t rx_pg_cons; size_t rx_pg_prod; struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2 {TYPE_1__* pdev; int rx_buf_use_size; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_4__ {int * frags; } ;
struct TYPE_3__ {int dev; } ;


 size_t BNX2_NEXT_RX_BD (size_t) ;
 scalar_t__ BNX2_RX_OFFSET ;
 size_t BNX2_RX_PG_RING_IDX (size_t) ;
 int GFP_ATOMIC ;
 int PAGE_ALIGN (unsigned int) ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int bnx2_alloc_rx_data (struct bnx2*,struct bnx2_rx_ring_info*,size_t,int ) ;
 int bnx2_alloc_rx_page (struct bnx2*,struct bnx2_rx_ring_info*,size_t,int ) ;
 int bnx2_reuse_rx_data (struct bnx2*,struct bnx2_rx_ring_info*,int *,size_t,size_t) ;
 int bnx2_reuse_rx_skb_pages (struct bnx2*,struct bnx2_rx_ring_info*,struct sk_buff*,unsigned int) ;
 struct sk_buff* build_skb (int *,int ) ;
 int dma_unmap_addr (struct bnx2_sw_pg*,int ) ;
 int dma_unmap_page (int *,int ,scalar_t__,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 scalar_t__ get_l2_fhdr (int *) ;
 int kfree (int *) ;
 int mapping ;
 unsigned int min (unsigned int,unsigned int) ;
 int skb_fill_page_desc (struct sk_buff*,unsigned int,int *,int ,unsigned int) ;
 int skb_frag_size_sub (int *,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *
bnx2_rx_skb(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u8 *data,
     unsigned int len, unsigned int hdr_len, dma_addr_t dma_addr,
     u32 ring_idx)
{
 int err;
 u16 prod = ring_idx & 0xffff;
 struct sk_buff *skb;

 err = bnx2_alloc_rx_data(bp, rxr, prod, GFP_ATOMIC);
 if (unlikely(err)) {
  bnx2_reuse_rx_data(bp, rxr, data, (u16) (ring_idx >> 16), prod);
error:
  if (hdr_len) {
   unsigned int raw_len = len + 4;
   int pages = PAGE_ALIGN(raw_len - hdr_len) >> PAGE_SHIFT;

   bnx2_reuse_rx_skb_pages(bp, rxr, ((void*)0), pages);
  }
  return ((void*)0);
 }

 dma_unmap_single(&bp->pdev->dev, dma_addr, bp->rx_buf_use_size,
    PCI_DMA_FROMDEVICE);
 skb = build_skb(data, 0);
 if (!skb) {
  kfree(data);
  goto error;
 }
 skb_reserve(skb, ((u8 *)get_l2_fhdr(data) - data) + BNX2_RX_OFFSET);
 if (hdr_len == 0) {
  skb_put(skb, len);
  return skb;
 } else {
  unsigned int i, frag_len, frag_size, pages;
  struct bnx2_sw_pg *rx_pg;
  u16 pg_cons = rxr->rx_pg_cons;
  u16 pg_prod = rxr->rx_pg_prod;

  frag_size = len + 4 - hdr_len;
  pages = PAGE_ALIGN(frag_size) >> PAGE_SHIFT;
  skb_put(skb, hdr_len);

  for (i = 0; i < pages; i++) {
   dma_addr_t mapping_old;

   frag_len = min(frag_size, (unsigned int) PAGE_SIZE);
   if (unlikely(frag_len <= 4)) {
    unsigned int tail = 4 - frag_len;

    rxr->rx_pg_cons = pg_cons;
    rxr->rx_pg_prod = pg_prod;
    bnx2_reuse_rx_skb_pages(bp, rxr, ((void*)0),
       pages - i);
    skb->len -= tail;
    if (i == 0) {
     skb->tail -= tail;
    } else {
     skb_frag_t *frag =
      &skb_shinfo(skb)->frags[i - 1];
     skb_frag_size_sub(frag, tail);
     skb->data_len -= tail;
    }
    return skb;
   }
   rx_pg = &rxr->rx_pg_ring[pg_cons];




   mapping_old = dma_unmap_addr(rx_pg, mapping);
   if (i == pages - 1)
    frag_len -= 4;

   skb_fill_page_desc(skb, i, rx_pg->page, 0, frag_len);
   rx_pg->page = ((void*)0);

   err = bnx2_alloc_rx_page(bp, rxr,
       BNX2_RX_PG_RING_IDX(pg_prod),
       GFP_ATOMIC);
   if (unlikely(err)) {
    rxr->rx_pg_cons = pg_cons;
    rxr->rx_pg_prod = pg_prod;
    bnx2_reuse_rx_skb_pages(bp, rxr, skb,
       pages - i);
    return ((void*)0);
   }

   dma_unmap_page(&bp->pdev->dev, mapping_old,
           PAGE_SIZE, PCI_DMA_FROMDEVICE);

   frag_size -= frag_len;
   skb->data_len += frag_len;
   skb->truesize += PAGE_SIZE;
   skb->len += frag_len;

   pg_prod = BNX2_NEXT_RX_BD(pg_prod);
   pg_cons = BNX2_RX_PG_RING_IDX(BNX2_NEXT_RX_BD(pg_cons));
  }
  rxr->rx_pg_prod = pg_prod;
  rxr->rx_pg_cons = pg_cons;
 }
 return skb;
}
