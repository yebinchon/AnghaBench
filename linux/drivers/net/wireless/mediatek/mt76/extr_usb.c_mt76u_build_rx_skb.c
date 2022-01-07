
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 int GFP_ATOMIC ;
 scalar_t__ MT_DMA_HDR_LEN ;
 scalar_t__ MT_SKB_HEAD_LEN ;
 scalar_t__ SKB_WITH_OVERHEAD (int) ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 struct sk_buff* build_skb (void*,int) ;
 int page_address (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,void*,scalar_t__,int) ;
 int skb_put_data (struct sk_buff*,void*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct page* virt_to_head_page (void*) ;

__attribute__((used)) static struct sk_buff *
mt76u_build_rx_skb(void *data, int len, int buf_size)
{
 struct sk_buff *skb;

 if (SKB_WITH_OVERHEAD(buf_size) < MT_DMA_HDR_LEN + len) {
  struct page *page;




  skb = alloc_skb(MT_SKB_HEAD_LEN, GFP_ATOMIC);
  if (!skb)
   return ((void*)0);

  skb_put_data(skb, data + MT_DMA_HDR_LEN, MT_SKB_HEAD_LEN);
  data += (MT_DMA_HDR_LEN + MT_SKB_HEAD_LEN);
  page = virt_to_head_page(data);
  skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags,
    page, data - page_address(page),
    len - MT_SKB_HEAD_LEN, buf_size);

  return skb;
 }


 skb = build_skb(data, buf_size);
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, MT_DMA_HDR_LEN);
 __skb_put(skb, len);

 return skb;
}
