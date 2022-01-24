#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xen_netif_rx_request {unsigned short id; void* gref; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_9__ {scalar_t__ req_prod_pvt; scalar_t__ rsp_cons; } ;
struct netfront_queue {int /*<<< orphan*/  rx_irq; TYPE_4__ rx; int /*<<< orphan*/  rx_refill_timer; TYPE_2__* info; void** grant_rx_ref; int /*<<< orphan*/  gref_rx_head; struct sk_buff** rx_skbs; } ;
typedef  void* grant_ref_t ;
struct TYPE_8__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_7__ {TYPE_1__* xbdev; int /*<<< orphan*/  netdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  otherend_id; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ NET_RX_RING_SIZE ; 
 scalar_t__ NET_RX_SLOTS_MIN ; 
 struct xen_netif_rx_request* FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct page* FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 
 struct sk_buff* FUNC13 (struct netfront_queue*) ; 
 unsigned short FUNC14 (scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct netfront_queue *queue)
{
	RING_IDX req_prod = queue->rx.req_prod_pvt;
	int notify;
	int err = 0;

	if (FUNC12(!FUNC8(queue->info->netdev)))
		return;

	for (req_prod = queue->rx.req_prod_pvt;
	     req_prod - queue->rx.rsp_cons < NET_RX_RING_SIZE;
	     req_prod++) {
		struct sk_buff *skb;
		unsigned short id;
		grant_ref_t ref;
		struct page *page;
		struct xen_netif_rx_request *req;

		skb = FUNC13(queue);
		if (!skb) {
			err = -ENOMEM;
			break;
		}

		id = FUNC14(req_prod);

		FUNC0(queue->rx_skbs[id]);
		queue->rx_skbs[id] = skb;

		ref = FUNC5(&queue->gref_rx_head);
		FUNC4(FUNC1((unsigned long)(int)ref));
		queue->grant_rx_ref[id] = ref;

		page = FUNC10(&FUNC11(skb)->frags[0]);

		req = FUNC2(&queue->rx, req_prod);
		FUNC6(ref,
							 queue->info->xbdev->otherend_id,
							 page,
							 0);
		req->id = id;
		req->gref = ref;
	}

	queue->rx.req_prod_pvt = req_prod;

	/* Try again later if there are not enough requests or skb allocation
	 * failed.
	 * Enough requests is quantified as the sum of newly created slots and
	 * the unconsumed slots at the backend.
	 */
	if (req_prod - queue->rx.rsp_cons < NET_RX_SLOTS_MIN ||
	    FUNC12(err)) {
		FUNC7(&queue->rx_refill_timer, jiffies + (HZ/10));
		return;
	}

	FUNC3(&queue->rx, notify);
	if (notify)
		FUNC9(queue->rx_irq);
}