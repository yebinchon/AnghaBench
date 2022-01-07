
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
struct sk_buff {int dev; } ;
struct page {int dummy; } ;
struct fm10k_rx_buffer {int page_offset; struct page* page; } ;
struct TYPE_2__ {int nr_frags; } ;


 unsigned int ALIGN (unsigned int,int) ;
 unsigned int FM10K_RX_BUFSZ ;
 unsigned int FM10K_RX_HDR_LEN ;
 unsigned long PAGE_MASK ;
 int __free_page (struct page*) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 unsigned int eth_get_headlen (int ,unsigned char*,unsigned int) ;
 int fm10k_can_reuse_rx_page (struct fm10k_rx_buffer*,struct page*,unsigned int) ;
 int fm10k_page_is_reserved (struct page*) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,unsigned char*,unsigned int) ;
 unsigned char* page_address (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,unsigned long,unsigned int,unsigned int) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool fm10k_add_rx_frag(struct fm10k_rx_buffer *rx_buffer,
         unsigned int size,
         union fm10k_rx_desc *rx_desc,
         struct sk_buff *skb)
{
 struct page *page = rx_buffer->page;
 unsigned char *va = page_address(page) + rx_buffer->page_offset;

 unsigned int truesize = FM10K_RX_BUFSZ;



 unsigned int pull_len;

 if (unlikely(skb_is_nonlinear(skb)))
  goto add_tail_frag;

 if (likely(size <= FM10K_RX_HDR_LEN)) {
  memcpy(__skb_put(skb, size), va, ALIGN(size, sizeof(long)));


  if (likely(!fm10k_page_is_reserved(page)))
   return 1;


  __free_page(page);
  return 0;
 }




 pull_len = eth_get_headlen(skb->dev, va, FM10K_RX_HDR_LEN);


 memcpy(__skb_put(skb, pull_len), va, ALIGN(pull_len, sizeof(long)));


 va += pull_len;
 size -= pull_len;

add_tail_frag:
 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page,
   (unsigned long)va & ~PAGE_MASK, size, truesize);

 return fm10k_can_reuse_rx_page(rx_buffer, page, truesize);
}
