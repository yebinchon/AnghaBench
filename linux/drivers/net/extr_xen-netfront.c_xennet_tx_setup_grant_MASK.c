#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xennet_gnttab_make_txreq {unsigned int size; struct xen_netif_tx_request* tx; struct sk_buff* skb; struct netfront_queue* queue; struct page* page; } ;
struct xen_netif_tx_request {unsigned int id; unsigned int offset; unsigned int size; scalar_t__ flags; void* gref; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct netfront_queue {void** grant_tx_ref; struct page** grant_tx_page; TYPE_3__* tx_skbs; TYPE_2__* info; int /*<<< orphan*/  gref_tx_head; TYPE_4__ tx; int /*<<< orphan*/  tx_skb_freelist; } ;
typedef  void* grant_ref_t ;
struct TYPE_7__ {struct sk_buff* skb; } ;
struct TYPE_6__ {TYPE_1__* xbdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNTMAP_readonly ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct xen_netif_tx_request* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(unsigned long gfn, unsigned int offset,
				  unsigned int len, void *data)
{
	struct xennet_gnttab_make_txreq *info = data;
	unsigned int id;
	struct xen_netif_tx_request *tx;
	grant_ref_t ref;
	/* convenient aliases */
	struct page *page = info->page;
	struct netfront_queue *queue = info->queue;
	struct sk_buff *skb = info->skb;

	id = FUNC3(&queue->tx_skb_freelist, queue->tx_skbs);
	tx = FUNC1(&queue->tx, queue->tx.req_prod_pvt++);
	ref = FUNC4(&queue->gref_tx_head);
	FUNC2(FUNC0((unsigned long)(int)ref));

	FUNC5(ref, queue->info->xbdev->otherend_id,
					gfn, GNTMAP_readonly);

	queue->tx_skbs[id].skb = skb;
	queue->grant_tx_page[id] = page;
	queue->grant_tx_ref[id] = ref;

	tx->id = id;
	tx->gref = ref;
	tx->offset = offset;
	tx->size = len;
	tx->flags = 0;

	info->tx = tx;
	info->size += tx->size;
}