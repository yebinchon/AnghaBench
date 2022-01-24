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
struct efx_tx_queue {int /*<<< orphan*/  core_txq; void* old_read_count; void* insert_count; int /*<<< orphan*/  read_count; struct efx_nic* efx; } ;
struct efx_nic {unsigned int txq_stop_thresh; unsigned int txq_entries; int /*<<< orphan*/  loopback_selftest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct efx_tx_queue* FUNC2 (struct efx_tx_queue*) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned int FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct efx_tx_queue *txq1)
{
	/* We need to consider both queues that the net core sees as one */
	struct efx_tx_queue *txq2 = FUNC2(txq1);
	struct efx_nic *efx = txq1->efx;
	unsigned int fill_level;

	fill_level = FUNC4(txq1->insert_count - txq1->old_read_count,
			 txq2->insert_count - txq2->old_read_count);
	if (FUNC3(fill_level < efx->txq_stop_thresh))
		return;

	/* We used the stale old_read_count above, which gives us a
	 * pessimistic estimate of the fill level (which may even
	 * validly be >= efx->txq_entries).  Now try again using
	 * read_count (more likely to be a cache miss).
	 *
	 * If we read read_count and then conditionally stop the
	 * queue, it is possible for the completion path to race with
	 * us and complete all outstanding descriptors in the middle,
	 * after which there will be no more completions to wake it.
	 * Therefore we stop the queue first, then read read_count
	 * (with a memory barrier to ensure the ordering), then
	 * restart the queue if the fill level turns out to be low
	 * enough.
	 */
	FUNC6(txq1->core_txq);
	FUNC7();
	txq1->old_read_count = FUNC1(txq1->read_count);
	txq2->old_read_count = FUNC1(txq2->read_count);

	fill_level = FUNC4(txq1->insert_count - txq1->old_read_count,
			 txq2->insert_count - txq2->old_read_count);
	FUNC0(fill_level >= efx->txq_entries);
	if (FUNC3(fill_level < efx->txq_stop_thresh)) {
		FUNC7();
		if (FUNC3(!efx->loopback_selftest))
			FUNC5(txq1->core_txq);
	}
}