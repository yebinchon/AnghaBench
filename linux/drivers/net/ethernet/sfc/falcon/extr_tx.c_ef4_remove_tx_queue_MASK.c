#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ef4_tx_queue {int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * cb_page; TYPE_1__* efx; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_tx_queue*) ; 
 int FUNC2 (struct ef4_tx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct ef4_tx_queue *tx_queue)
{
	int i;

	if (!tx_queue->buffer)
		return;

	FUNC4(tx_queue->efx, drv, tx_queue->efx->net_dev,
		  "destroying TX queue %d\n", tx_queue->queue);
	FUNC1(tx_queue);

	if (tx_queue->cb_page) {
		for (i = 0; i < FUNC2(tx_queue); i++)
			FUNC0(tx_queue->efx,
					    &tx_queue->cb_page[i]);
		FUNC3(tx_queue->cb_page);
		tx_queue->cb_page = NULL;
	}

	FUNC3(tx_queue->buffer);
	tx_queue->buffer = NULL;
}