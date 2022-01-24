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
struct efx_nic {TYPE_1__* ptp_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; int /*<<< orphan*/  workwq; scalar_t__ phc_clock; int /*<<< orphan*/  pps_workwq; int /*<<< orphan*/  txq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  pps_work; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct efx_nic *efx)
{
	if (!efx->ptp_data)
		return;

	(void)FUNC3(efx);

	FUNC0(&efx->ptp_data->work);
	FUNC0(&efx->ptp_data->pps_work);

	FUNC6(&efx->ptp_data->rxq);
	FUNC6(&efx->ptp_data->txq);

	if (efx->ptp_data->phc_clock) {
		FUNC1(efx->ptp_data->pps_workwq);
		FUNC5(efx->ptp_data->phc_clock);
	}

	FUNC1(efx->ptp_data->workwq);

	FUNC2(efx, &efx->ptp_data->start);
	FUNC4(efx->ptp_data);
	efx->ptp_data = NULL;
}