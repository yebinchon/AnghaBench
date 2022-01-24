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
struct efx_tx_queue {unsigned int ptr_mask; unsigned int pkts_compl; unsigned int bytes_compl; int insert_count; int read_count; int old_write_count; int empty_read_count; int /*<<< orphan*/  write_count; int /*<<< orphan*/  core_txq; int /*<<< orphan*/  merge_events; struct efx_nic* efx; } ;
struct efx_nic {unsigned int txq_wake_thresh; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  port_enabled; } ;

/* Variables and functions */
 int EFX_EMPTY_COUNT_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_tx_queue*,unsigned int,unsigned int*,unsigned int*) ; 
 struct efx_tx_queue* FUNC3 (struct efx_tx_queue*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct efx_tx_queue *tx_queue, unsigned int index)
{
	unsigned fill_level;
	struct efx_nic *efx = tx_queue->efx;
	struct efx_tx_queue *txq2;
	unsigned int pkts_compl = 0, bytes_compl = 0;

	FUNC0(index > tx_queue->ptr_mask);

	FUNC2(tx_queue, index, &pkts_compl, &bytes_compl);
	tx_queue->pkts_compl += pkts_compl;
	tx_queue->bytes_compl += bytes_compl;

	if (pkts_compl > 1)
		++tx_queue->merge_events;

	/* See if we need to restart the netif queue.  This memory
	 * barrier ensures that we write read_count (inside
	 * efx_dequeue_buffers()) before reading the queue status.
	 */
	FUNC9();
	if (FUNC10(FUNC7(tx_queue->core_txq)) &&
	    FUNC4(efx->port_enabled) &&
	    FUNC4(FUNC6(efx->net_dev))) {
		txq2 = FUNC3(tx_queue);
		fill_level = FUNC5(tx_queue->insert_count - tx_queue->read_count,
				 txq2->insert_count - txq2->read_count);
		if (fill_level <= efx->txq_wake_thresh)
			FUNC8(tx_queue->core_txq);
	}

	/* Check whether the hardware queue is now empty */
	if ((int)(tx_queue->read_count - tx_queue->old_write_count) >= 0) {
		tx_queue->old_write_count = FUNC1(tx_queue->write_count);
		if (tx_queue->read_count == tx_queue->old_write_count) {
			FUNC9();
			tx_queue->empty_read_count =
				tx_queue->read_count | EFX_EMPTY_COUNT_VALID;
		}
	}
}