
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int truesize; int data_len; int len; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 int skb_fill_page_desc (struct sk_buff*,int ,struct page*,scalar_t__,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void niu_rx_skb_append(struct sk_buff *skb, struct page *page,
         u32 offset, u32 size, u32 truesize)
{
 skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags, page, offset, size);

 skb->len += size;
 skb->data_len += size;
 skb->truesize += truesize;
}
