#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct netfront_queue {TYPE_2__ rx; void** grant_rx_ref; struct sk_buff** rx_skbs; } ;
typedef  void* grant_ref_t ;
struct TYPE_3__ {int id; void* gref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct netfront_queue *queue, struct sk_buff *skb,
				grant_ref_t ref)
{
	int new = FUNC2(queue->rx.req_prod_pvt);

	FUNC0(queue->rx_skbs[new]);
	queue->rx_skbs[new] = skb;
	queue->grant_rx_ref[new] = ref;
	FUNC1(&queue->rx, queue->rx.req_prod_pvt)->id = new;
	FUNC1(&queue->rx, queue->rx.req_prod_pvt)->gref = ref;
	queue->rx.req_prod_pvt++;
}