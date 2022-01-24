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
struct efx_rx_queue {int /*<<< orphan*/  rxd; struct efx_nic* efx; } ;
struct efx_nic {TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;
struct TYPE_2__ {int /*<<< orphan*/  rxd_ptr_tbl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct efx_rx_queue *rx_queue)
{
	efx_oword_t rx_desc_ptr;
	struct efx_nic *efx = rx_queue->efx;

	/* Remove RX descriptor ring from card */
	FUNC0(rx_desc_ptr);
	FUNC3(efx, &rx_desc_ptr, efx->type->rxd_ptr_tbl_base,
			 FUNC2(rx_queue));

	/* Unpin RX descriptor ring */
	FUNC1(efx, &rx_queue->rxd);
}