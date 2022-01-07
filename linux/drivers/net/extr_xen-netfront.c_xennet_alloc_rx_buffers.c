
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xen_netif_rx_request {unsigned short id; void* gref; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_9__ {scalar_t__ req_prod_pvt; scalar_t__ rsp_cons; } ;
struct netfront_queue {int rx_irq; TYPE_4__ rx; int rx_refill_timer; TYPE_2__* info; void** grant_rx_ref; int gref_rx_head; struct sk_buff** rx_skbs; } ;
typedef void* grant_ref_t ;
struct TYPE_8__ {int * frags; } ;
struct TYPE_7__ {TYPE_1__* xbdev; int netdev; } ;
struct TYPE_6__ {int otherend_id; } ;
typedef scalar_t__ RING_IDX ;


 int BUG_ON (struct sk_buff*) ;
 int ENOMEM ;
 int HZ ;
 int IS_ERR_VALUE (unsigned long) ;
 scalar_t__ NET_RX_RING_SIZE ;
 scalar_t__ NET_RX_SLOTS_MIN ;
 struct xen_netif_rx_request* RING_GET_REQUEST (TYPE_4__*,scalar_t__) ;
 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (TYPE_4__*,int) ;
 int WARN_ON_ONCE (int ) ;
 void* gnttab_claim_grant_reference (int *) ;
 int gnttab_page_grant_foreign_access_ref_one (void*,int ,struct page*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_carrier_ok (int ) ;
 int notify_remote_via_irq (int ) ;
 struct page* skb_frag_page (int *) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* xennet_alloc_one_rx_buffer (struct netfront_queue*) ;
 unsigned short xennet_rxidx (scalar_t__) ;

__attribute__((used)) static void xennet_alloc_rx_buffers(struct netfront_queue *queue)
{
 RING_IDX req_prod = queue->rx.req_prod_pvt;
 int notify;
 int err = 0;

 if (unlikely(!netif_carrier_ok(queue->info->netdev)))
  return;

 for (req_prod = queue->rx.req_prod_pvt;
      req_prod - queue->rx.rsp_cons < NET_RX_RING_SIZE;
      req_prod++) {
  struct sk_buff *skb;
  unsigned short id;
  grant_ref_t ref;
  struct page *page;
  struct xen_netif_rx_request *req;

  skb = xennet_alloc_one_rx_buffer(queue);
  if (!skb) {
   err = -ENOMEM;
   break;
  }

  id = xennet_rxidx(req_prod);

  BUG_ON(queue->rx_skbs[id]);
  queue->rx_skbs[id] = skb;

  ref = gnttab_claim_grant_reference(&queue->gref_rx_head);
  WARN_ON_ONCE(IS_ERR_VALUE((unsigned long)(int)ref));
  queue->grant_rx_ref[id] = ref;

  page = skb_frag_page(&skb_shinfo(skb)->frags[0]);

  req = RING_GET_REQUEST(&queue->rx, req_prod);
  gnttab_page_grant_foreign_access_ref_one(ref,
        queue->info->xbdev->otherend_id,
        page,
        0);
  req->id = id;
  req->gref = ref;
 }

 queue->rx.req_prod_pvt = req_prod;






 if (req_prod - queue->rx.rsp_cons < NET_RX_SLOTS_MIN ||
     unlikely(err)) {
  mod_timer(&queue->rx_refill_timer, jiffies + (HZ/10));
  return;
 }

 RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(&queue->rx, notify);
 if (notify)
  notify_remote_via_irq(queue->rx_irq);
}
