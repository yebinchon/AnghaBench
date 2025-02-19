
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct atl1c_adapter {scalar_t__ rx_frag_size; scalar_t__ rx_page_offset; struct page* rx_page; int rx_buffer_len; int netdev; } ;


 int GFP_ATOMIC ;
 int NET_SKB_PAD ;
 scalar_t__ PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 struct sk_buff* build_skb (scalar_t__,scalar_t__) ;
 int get_page (struct page*) ;
 scalar_t__ likely (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 scalar_t__ page_address (struct page*) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *atl1c_alloc_skb(struct atl1c_adapter *adapter)
{
 struct sk_buff *skb;
 struct page *page;

 if (adapter->rx_frag_size > PAGE_SIZE)
  return netdev_alloc_skb(adapter->netdev,
     adapter->rx_buffer_len);

 page = adapter->rx_page;
 if (!page) {
  adapter->rx_page = page = alloc_page(GFP_ATOMIC);
  if (unlikely(!page))
   return ((void*)0);
  adapter->rx_page_offset = 0;
 }

 skb = build_skb(page_address(page) + adapter->rx_page_offset,
   adapter->rx_frag_size);
 if (likely(skb)) {
  skb_reserve(skb, NET_SKB_PAD);
  adapter->rx_page_offset += adapter->rx_frag_size;
  if (adapter->rx_page_offset >= PAGE_SIZE)
   adapter->rx_page = ((void*)0);
  else
   get_page(page);
 }
 return skb;
}
