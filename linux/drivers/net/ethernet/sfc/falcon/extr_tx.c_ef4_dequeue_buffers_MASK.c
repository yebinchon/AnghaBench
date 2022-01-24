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
struct ef4_tx_queue {unsigned int ptr_mask; unsigned int read_count; int /*<<< orphan*/  queue; struct ef4_tx_buffer* buffer; struct ef4_nic* efx; } ;
struct ef4_tx_buffer {int flags; scalar_t__ len; } ;
struct ef4_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int EF4_TX_BUF_OPTION ; 
 int /*<<< orphan*/  RESET_TYPE_TX_SKIP ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_tx_queue*,struct ef4_tx_buffer*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ef4_tx_queue *tx_queue,
				unsigned int index,
				unsigned int *pkts_compl,
				unsigned int *bytes_compl)
{
	struct ef4_nic *efx = tx_queue->efx;
	unsigned int stop_index, read_ptr;

	stop_index = (index + 1) & tx_queue->ptr_mask;
	read_ptr = tx_queue->read_count & tx_queue->ptr_mask;

	while (read_ptr != stop_index) {
		struct ef4_tx_buffer *buffer = &tx_queue->buffer[read_ptr];

		if (!(buffer->flags & EF4_TX_BUF_OPTION) &&
		    FUNC3(buffer->len == 0)) {
			FUNC2(efx, tx_err, efx->net_dev,
				  "TX queue %d spurious TX completion id %x\n",
				  tx_queue->queue, read_ptr);
			FUNC1(efx, RESET_TYPE_TX_SKIP);
			return;
		}

		FUNC0(tx_queue, buffer, pkts_compl, bytes_compl);

		++tx_queue->read_count;
		read_ptr = tx_queue->read_count & tx_queue->ptr_mask;
	}
}