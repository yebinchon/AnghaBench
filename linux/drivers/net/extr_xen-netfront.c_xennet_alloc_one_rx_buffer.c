
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct page {int dummy; } ;
struct netfront_queue {TYPE_1__* info; } ;
struct TYPE_2__ {int netdev; } ;


 int GFP_ATOMIC ;
 scalar_t__ NET_IP_ALIGN ;
 int PAGE_SIZE ;
 scalar_t__ RX_COPY_THRESHOLD ;
 int __GFP_NOWARN ;
 struct sk_buff* __netdev_alloc_skb (int ,scalar_t__,int) ;
 struct page* alloc_page (int) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int ,int ,int ) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *xennet_alloc_one_rx_buffer(struct netfront_queue *queue)
{
 struct sk_buff *skb;
 struct page *page;

 skb = __netdev_alloc_skb(queue->info->netdev,
     RX_COPY_THRESHOLD + NET_IP_ALIGN,
     GFP_ATOMIC | __GFP_NOWARN);
 if (unlikely(!skb))
  return ((void*)0);

 page = alloc_page(GFP_ATOMIC | __GFP_NOWARN);
 if (!page) {
  kfree_skb(skb);
  return ((void*)0);
 }
 skb_add_rx_frag(skb, 0, page, 0, 0, PAGE_SIZE);


 skb_reserve(skb, NET_IP_ALIGN);
 skb->dev = queue->info->netdev;

 return skb;
}
