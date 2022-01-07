
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xennet_gnttab_make_txreq {struct xen_netif_tx_request* tx; scalar_t__ size; struct page* page; struct sk_buff* skb; struct netfront_queue* queue; } ;
struct xen_netif_tx_request {int dummy; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct netfront_queue {int dummy; } ;


 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 int gnttab_foreach_grant_in_range (struct page*,unsigned int,unsigned int,int ,struct xennet_gnttab_make_txreq*) ;
 int xennet_make_one_txreq ;

__attribute__((used)) static struct xen_netif_tx_request *xennet_make_txreqs(
 struct netfront_queue *queue, struct xen_netif_tx_request *tx,
 struct sk_buff *skb, struct page *page,
 unsigned int offset, unsigned int len)
{
 struct xennet_gnttab_make_txreq info = {
  .queue = queue,
  .skb = skb,
  .tx = tx,
 };


 page += offset >> PAGE_SHIFT;
 offset &= ~PAGE_MASK;

 while (len) {
  info.page = page;
  info.size = 0;

  gnttab_foreach_grant_in_range(page, offset, len,
           xennet_make_one_txreq,
           &info);

  page++;
  offset = 0;
  len -= info.size;
 }

 return info.tx;
}
