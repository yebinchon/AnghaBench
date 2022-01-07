
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct page {int dummy; } ;
struct gfar_rx_buff {scalar_t__ page_offset; struct page* page; } ;
struct TYPE_2__ {int nr_frags; } ;


 int BD_LENGTH_MASK ;
 int BD_LFLAG (int ) ;
 scalar_t__ GFAR_RXB_TRUESIZE ;
 int RXBD_LAST ;
 scalar_t__ RXBUF_ALIGNMENT ;
 scalar_t__ likely (int) ;
 int page_count (struct page*) ;
 scalar_t__ page_is_pfmemalloc (struct page*) ;
 int page_ref_inc (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,scalar_t__,int,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool gfar_add_rx_frag(struct gfar_rx_buff *rxb, u32 lstatus,
        struct sk_buff *skb, bool first)
{
 int size = lstatus & BD_LENGTH_MASK;
 struct page *page = rxb->page;

 if (likely(first)) {
  skb_put(skb, size);
 } else {

  if (lstatus & BD_LFLAG(RXBD_LAST))
   size -= skb->len;

  skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page,
    rxb->page_offset + RXBUF_ALIGNMENT,
    size, GFAR_RXB_TRUESIZE);
 }


 if (unlikely(page_count(page) != 1 || page_is_pfmemalloc(page)))
  return 0;


 rxb->page_offset ^= GFAR_RXB_TRUESIZE;

 page_ref_inc(page);

 return 1;
}
