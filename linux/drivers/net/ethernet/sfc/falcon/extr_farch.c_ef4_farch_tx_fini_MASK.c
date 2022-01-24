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
struct ef4_tx_queue {int /*<<< orphan*/  txd; int /*<<< orphan*/  queue; struct ef4_nic* efx; } ;
struct ef4_nic {TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;
struct TYPE_2__ {int /*<<< orphan*/  txd_ptr_tbl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ef4_tx_queue *tx_queue)
{
	struct ef4_nic *efx = tx_queue->efx;
	ef4_oword_t tx_desc_ptr;

	/* Remove TX descriptor ring from card */
	FUNC0(tx_desc_ptr);
	FUNC2(efx, &tx_desc_ptr, efx->type->txd_ptr_tbl_base,
			 tx_queue->queue);

	/* Unpin TX descriptor ring */
	FUNC1(efx, &tx_queue->txd);
}