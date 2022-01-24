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
struct ef4_tx_queue {size_t queue; struct ef4_nic* efx; } ;
struct ef4_nic {int /*<<< orphan*/  net_dev; struct ef4_loopback_state* loopback_selftest; } ;
struct ef4_loopback_state {int packet_count; int /*<<< orphan*/  rx_bad; int /*<<< orphan*/  rx_good; struct sk_buff** skbs; } ;
struct ef4_loopback_self_tests {int* tx_sent; int* tx_done; int rx_good; int rx_bad; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct ef4_tx_queue *tx_queue,
			    struct ef4_loopback_self_tests *lb_tests)
{
	struct ef4_nic *efx = tx_queue->efx;
	struct ef4_loopback_state *state = efx->loopback_selftest;
	struct sk_buff *skb;
	int tx_done = 0, rx_good, rx_bad;
	int i, rc = 0;

	FUNC5(efx->net_dev);

	/* Count the number of tx completions, and decrement the refcnt. Any
	 * skbs not already completed will be free'd when the queue is flushed */
	for (i = 0; i < state->packet_count; i++) {
		skb = state->skbs[i];
		if (skb && !FUNC7(skb))
			++tx_done;
		FUNC2(skb);
	}

	FUNC6(efx->net_dev);

	/* Check TX completion and received packet counts */
	rx_good = FUNC1(&state->rx_good);
	rx_bad = FUNC1(&state->rx_bad);
	if (tx_done != state->packet_count) {
		/* Don't free the skbs; they will be picked up on TX
		 * overflow or channel teardown.
		 */
		FUNC4(efx, drv, efx->net_dev,
			  "TX queue %d saw only %d out of an expected %d "
			  "TX completion events in %s loopback test\n",
			  tx_queue->queue, tx_done, state->packet_count,
			  FUNC0(efx));
		rc = -ETIMEDOUT;
		/* Allow to fall through so we see the RX errors as well */
	}

	/* We may always be up to a flush away from our desired packet total */
	if (rx_good != state->packet_count) {
		FUNC3(efx, drv, efx->net_dev,
			  "TX queue %d saw only %d out of an expected %d "
			  "received packets in %s loopback test\n",
			  tx_queue->queue, rx_good, state->packet_count,
			  FUNC0(efx));
		rc = -ETIMEDOUT;
		/* Fall through */
	}

	/* Update loopback test structure */
	lb_tests->tx_sent[tx_queue->queue] += state->packet_count;
	lb_tests->tx_done[tx_queue->queue] += tx_done;
	lb_tests->rx_good += rx_good;
	lb_tests->rx_bad += rx_bad;

	return rc;
}