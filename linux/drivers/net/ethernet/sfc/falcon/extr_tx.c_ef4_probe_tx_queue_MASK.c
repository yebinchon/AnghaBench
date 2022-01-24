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
struct ef4_tx_queue {unsigned int ptr_mask; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * cb_page; int /*<<< orphan*/  queue; struct ef4_nic* efx; } ;
struct ef4_nic {int /*<<< orphan*/  txq_entries; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EF4_MAX_DMAQ_SIZE ; 
 int /*<<< orphan*/  EF4_MIN_DMAQ_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct ef4_tx_queue*) ; 
 unsigned int FUNC2 (struct ef4_tx_queue*) ; 
 void* FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ef4_tx_queue *tx_queue)
{
	struct ef4_nic *efx = tx_queue->efx;
	unsigned int entries;
	int rc;

	/* Create the smallest power-of-two aligned ring */
	entries = FUNC5(FUNC7(efx->txq_entries), EF4_MIN_DMAQ_SIZE);
	FUNC0(entries > EF4_MAX_DMAQ_SIZE);
	tx_queue->ptr_mask = entries - 1;

	FUNC6(efx, probe, efx->net_dev,
		  "creating TX queue %d size %#x mask %#x\n",
		  tx_queue->queue, efx->txq_entries, tx_queue->ptr_mask);

	/* Allocate software ring */
	tx_queue->buffer = FUNC3(entries, sizeof(*tx_queue->buffer),
				   GFP_KERNEL);
	if (!tx_queue->buffer)
		return -ENOMEM;

	tx_queue->cb_page = FUNC3(FUNC2(tx_queue),
				    sizeof(tx_queue->cb_page[0]), GFP_KERNEL);
	if (!tx_queue->cb_page) {
		rc = -ENOMEM;
		goto fail1;
	}

	/* Allocate hardware ring */
	rc = FUNC1(tx_queue);
	if (rc)
		goto fail2;

	return 0;

fail2:
	FUNC4(tx_queue->cb_page);
	tx_queue->cb_page = NULL;
fail1:
	FUNC4(tx_queue->buffer);
	tx_queue->buffer = NULL;
	return rc;
}