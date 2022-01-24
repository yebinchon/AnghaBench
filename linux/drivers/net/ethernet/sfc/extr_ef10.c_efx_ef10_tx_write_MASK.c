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
struct efx_tx_queue {unsigned int write_count; int xmit_more_available; unsigned int insert_count; unsigned int ptr_mask; unsigned int packet_write_count; int /*<<< orphan*/  pushes; struct efx_tx_buffer* buffer; } ;
struct efx_tx_buffer {int flags; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  len; int /*<<< orphan*/  option; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EFX_TX_BUF_CONT ; 
 int EFX_TX_BUF_OPTION ; 
 int /*<<< orphan*/  ESF_DZ_TX_KER_BUF_ADDR ; 
 int /*<<< orphan*/  ESF_DZ_TX_KER_BYTE_CNT ; 
 int /*<<< orphan*/  ESF_DZ_TX_KER_CONT ; 
 int /*<<< orphan*/  ESF_DZ_TX_OPTION_TYPE ; 
 int /*<<< orphan*/  FUNC3 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_tx_queue*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct efx_tx_queue*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC6 (struct efx_tx_queue*,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct efx_tx_queue *tx_queue)
{
	unsigned int old_write_count = tx_queue->write_count;
	struct efx_tx_buffer *buffer;
	unsigned int write_ptr;
	efx_qword_t *txd;

	tx_queue->xmit_more_available = false;
	if (FUNC7(tx_queue->write_count == tx_queue->insert_count))
		return;

	do {
		write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
		buffer = &tx_queue->buffer[write_ptr];
		txd = FUNC6(tx_queue, write_ptr);
		++tx_queue->write_count;

		/* Create TX descriptor ring entry */
		if (buffer->flags & EFX_TX_BUF_OPTION) {
			*txd = buffer->option;
			if (FUNC2(*txd, ESF_DZ_TX_OPTION_TYPE) == 1)
				/* PIO descriptor */
				tx_queue->packet_write_count = tx_queue->write_count;
		} else {
			tx_queue->packet_write_count = tx_queue->write_count;
			FUNC0(EFX_TX_BUF_CONT != 1);
			FUNC1(
				*txd,
				ESF_DZ_TX_KER_CONT,
				buffer->flags & EFX_TX_BUF_CONT,
				ESF_DZ_TX_KER_BYTE_CNT, buffer->len,
				ESF_DZ_TX_KER_BUF_ADDR, buffer->dma_addr);
		}
	} while (tx_queue->write_count != tx_queue->insert_count);

	FUNC8(); /* Ensure descriptors are written before they are fetched */

	if (FUNC5(tx_queue, old_write_count)) {
		txd = FUNC6(tx_queue,
				  old_write_count & tx_queue->ptr_mask);
		FUNC4(tx_queue, txd);
		++tx_queue->pushes;
	} else {
		FUNC3(tx_queue);
	}
}