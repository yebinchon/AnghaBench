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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct htt_tx_done {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct ath10k_htt {TYPE_2__ tx_fetch_ind_q; int /*<<< orphan*/  txdone_fifo; int /*<<< orphan*/  num_mpdus_ready; TYPE_1__ rx_ring; int /*<<< orphan*/  rx_in_ord_compl_q; } ;
struct ath10k {struct ath10k_htt htt; } ;

/* Variables and functions */
 int EIO ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int FUNC2 (struct ath10k*,int,int) ; 
 int FUNC3 (struct ath10k_htt*) ; 
 int FUNC4 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k_htt*,struct htt_tx_done*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct htt_tx_done*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC20(struct ath10k *ar, int budget)
{
	struct ath10k_htt *htt = &ar->htt;
	struct htt_tx_done tx_done = {};
	struct sk_buff_head tx_ind_q;
	struct sk_buff *skb;
	unsigned long flags;
	int quota = 0, done, ret;
	bool resched_napi = false;

	FUNC1(&tx_ind_q);

	/* Process pending frames before dequeuing more data
	 * from hardware.
	 */
	quota = FUNC2(ar, quota, budget);
	if (quota == budget) {
		resched_napi = true;
		goto exit;
	}

	while ((skb = FUNC14(&htt->rx_in_ord_compl_q))) {
		FUNC16(&htt->rx_ring.lock);
		ret = FUNC4(ar, skb);
		FUNC18(&htt->rx_ring.lock);

		FUNC11(skb);
		if (ret == -EIO) {
			resched_napi = true;
			goto exit;
		}
	}

	while (FUNC10(&htt->num_mpdus_ready)) {
		ret = FUNC3(htt);
		if (ret == -EIO) {
			resched_napi = true;
			goto exit;
		}
		FUNC9(&htt->num_mpdus_ready);
	}

	/* Deliver received data after processing data from hardware */
	quota = FUNC2(ar, quota, budget);

	/* From NAPI documentation:
	 *  The napi poll() function may also process TX completions, in which
	 *  case if it processes the entire TX ring then it should count that
	 *  work as the rest of the budget.
	 */
	if ((quota < budget) && !FUNC13(&htt->txdone_fifo))
		quota = budget;

	/* kfifo_get: called only within txrx_tasklet so it's neatly serialized.
	 * From kfifo_get() documentation:
	 *  Note that with only one concurrent reader and one concurrent writer,
	 *  you don't need extra locking to use these macro.
	 */
	while (FUNC12(&htt->txdone_fifo, &tx_done))
		FUNC8(htt, &tx_done);

	FUNC7(ar);

	FUNC17(&htt->tx_fetch_ind_q.lock, flags);
	FUNC15(&htt->tx_fetch_ind_q, &tx_ind_q);
	FUNC19(&htt->tx_fetch_ind_q.lock, flags);

	while ((skb = FUNC0(&tx_ind_q))) {
		FUNC6(ar, skb);
		FUNC11(skb);
	}

exit:
	FUNC5(htt);
	/* In case of rx failure or more data to read, report budget
	 * to reschedule NAPI poll
	 */
	done = resched_napi ? budget : quota;

	return done;
}