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
struct efx_rx_queue {int added_count; unsigned int notified_count; int ptr_mask; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ERF_DZ_RX_DESC_WPTR ; 
 int /*<<< orphan*/  ER_DZ_RX_DESC_UPD ; 
 int /*<<< orphan*/  FUNC1 (struct efx_rx_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct efx_rx_queue *rx_queue)
{
	struct efx_nic *efx = rx_queue->efx;
	unsigned int write_count;
	efx_dword_t reg;

	/* Firmware requires that RX_DESC_WPTR be a multiple of 8 */
	write_count = rx_queue->added_count & ~7;
	if (rx_queue->notified_count == write_count)
		return;

	do
		FUNC1(
			rx_queue,
			rx_queue->notified_count & rx_queue->ptr_mask);
	while (++rx_queue->notified_count != write_count);

	FUNC4();
	FUNC0(reg, ERF_DZ_RX_DESC_WPTR,
			     write_count & rx_queue->ptr_mask);
	FUNC3(efx, &reg, ER_DZ_RX_DESC_UPD,
			FUNC2(rx_queue));
}