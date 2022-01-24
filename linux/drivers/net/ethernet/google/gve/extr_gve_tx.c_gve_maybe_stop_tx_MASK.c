#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct gve_tx_ring {int /*<<< orphan*/  wake_queue; int /*<<< orphan*/  netdev_txq; int /*<<< orphan*/  stop_queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct gve_tx_ring*,int) ; 
 int FUNC1 (struct gve_tx_ring*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct gve_tx_ring *tx, struct sk_buff *skb)
{
	int bytes_required;

	bytes_required = FUNC1(tx, skb);
	if (FUNC2(FUNC0(tx, bytes_required)))
		return 0;

	/* No space, so stop the queue */
	tx->stop_queue++;
	FUNC4(tx->netdev_txq);
	FUNC5();	/* sync with restarting queue in gve_clean_tx_done() */

	/* Now check for resources again, in case gve_clean_tx_done() freed
	 * resources after we checked and we stopped the queue after
	 * gve_clean_tx_done() checked.
	 *
	 * gve_maybe_stop_tx()			gve_clean_tx_done()
	 *   nsegs/can_alloc test failed
	 *					  gve_tx_free_fifo()
	 *					  if (tx queue stopped)
	 *					    netif_tx_queue_wake()
	 *   netif_tx_stop_queue()
	 *   Need to check again for space here!
	 */
	if (FUNC2(!FUNC0(tx, bytes_required)))
		return -EBUSY;

	FUNC3(tx->netdev_txq);
	tx->wake_queue++;
	return 0;
}