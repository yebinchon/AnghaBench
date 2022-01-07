
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct netfront_queue {int* grant_rx_ref; int rx_lock; struct sk_buff** rx_skbs; } ;
struct TYPE_2__ {int * frags; } ;


 int GRANT_INVALID_REF ;
 int NET_RX_RING_SIZE ;
 int get_page (struct page*) ;
 int gnttab_end_foreign_access (int,int ,unsigned long) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ page_address (struct page*) ;
 struct page* skb_frag_page (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void xennet_release_rx_bufs(struct netfront_queue *queue)
{
 int id, ref;

 spin_lock_bh(&queue->rx_lock);

 for (id = 0; id < NET_RX_RING_SIZE; id++) {
  struct sk_buff *skb;
  struct page *page;

  skb = queue->rx_skbs[id];
  if (!skb)
   continue;

  ref = queue->grant_rx_ref[id];
  if (ref == GRANT_INVALID_REF)
   continue;

  page = skb_frag_page(&skb_shinfo(skb)->frags[0]);




  get_page(page);
  gnttab_end_foreign_access(ref, 0,
       (unsigned long)page_address(page));
  queue->grant_rx_ref[id] = GRANT_INVALID_REF;

  kfree_skb(skb);
 }

 spin_unlock_bh(&queue->rx_lock);
}
