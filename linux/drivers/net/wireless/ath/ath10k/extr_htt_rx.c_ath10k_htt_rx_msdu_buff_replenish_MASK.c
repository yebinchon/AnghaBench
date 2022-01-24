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
struct TYPE_2__ {int fill_level; int fill_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  refill_retry_timer; } ;
struct ath10k_htt {TYPE_1__ rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_HTT_MAX_NUM_REFILL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HTT_RX_RING_REFILL_RESCHED_MS ; 
 int /*<<< orphan*/  HTT_RX_RING_REFILL_RETRY_MS ; 
 int FUNC0 (struct ath10k_htt*,int) ; 
 scalar_t__ jiffies ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ath10k_htt *htt)
{
	int ret, num_deficit, num_to_fill;

	/* Refilling the whole RX ring buffer proves to be a bad idea. The
	 * reason is RX may take up significant amount of CPU cycles and starve
	 * other tasks, e.g. TX on an ethernet device while acting as a bridge
	 * with ath10k wlan interface. This ended up with very poor performance
	 * once CPU the host system was overwhelmed with RX on ath10k.
	 *
	 * By limiting the number of refills the replenishing occurs
	 * progressively. This in turns makes use of the fact tasklets are
	 * processed in FIFO order. This means actual RX processing can starve
	 * out refilling. If there's not enough buffers on RX ring FW will not
	 * report RX until it is refilled with enough buffers. This
	 * automatically balances load wrt to CPU power.
	 *
	 * This probably comes at a cost of lower maximum throughput but
	 * improves the average and stability.
	 */
	FUNC4(&htt->rx_ring.lock);
	num_deficit = htt->rx_ring.fill_level - htt->rx_ring.fill_cnt;
	num_to_fill = FUNC1(ATH10K_HTT_MAX_NUM_REFILL, num_deficit);
	num_deficit -= num_to_fill;
	ret = FUNC0(htt, num_to_fill);
	if (ret == -ENOMEM) {
		/*
		 * Failed to fill it to the desired level -
		 * we'll start a timer and try again next time.
		 * As long as enough buffers are left in the ring for
		 * another A-MPDU rx, no special recovery is needed.
		 */
		FUNC2(&htt->rx_ring.refill_retry_timer, jiffies +
			  FUNC3(HTT_RX_RING_REFILL_RETRY_MS));
	} else if (num_deficit > 0) {
		FUNC2(&htt->rx_ring.refill_retry_timer, jiffies +
			  FUNC3(HTT_RX_RING_REFILL_RESCHED_MS));
	}
	FUNC5(&htt->rx_ring.lock);
}