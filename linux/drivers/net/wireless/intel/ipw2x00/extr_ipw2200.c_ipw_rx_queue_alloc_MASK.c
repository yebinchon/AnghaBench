#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipw_rx_queue {scalar_t__ free_count; scalar_t__ write; scalar_t__ read; int /*<<< orphan*/  rx_used; TYPE_1__* pool; int /*<<< orphan*/  rx_free; int /*<<< orphan*/  lock; } ;
struct ipw_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int RX_FREE_BUFFERS ; 
 int RX_QUEUE_SIZE ; 
 struct ipw_rx_queue* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct ipw_rx_queue *FUNC6(struct ipw_priv *priv)
{
	struct ipw_rx_queue *rxq;
	int i;

	rxq = FUNC2(sizeof(*rxq), GFP_KERNEL);
	if (FUNC5(!rxq)) {
		FUNC1("memory allocation failed\n");
		return NULL;
	}
	FUNC4(&rxq->lock);
	FUNC0(&rxq->rx_free);
	FUNC0(&rxq->rx_used);

	/* Fill the rx_used queue with _all_ of the Rx buffers */
	for (i = 0; i < RX_FREE_BUFFERS + RX_QUEUE_SIZE; i++)
		FUNC3(&rxq->pool[i].list, &rxq->rx_used);

	/* Set us so that we have processed and used all buffers, but have
	 * not restocked the Rx queue with fresh buffers */
	rxq->read = rxq->write = 0;
	rxq->free_count = 0;

	return rxq;
}