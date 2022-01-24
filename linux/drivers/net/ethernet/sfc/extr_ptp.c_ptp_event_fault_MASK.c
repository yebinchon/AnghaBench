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
struct efx_ptp_data {int evt_frag_idx; int /*<<< orphan*/ * evt_frags; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCDI_EVENT_DATA ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int) ; 

__attribute__((used)) static void FUNC3(struct efx_nic *efx, struct efx_ptp_data *ptp)
{
	int code = FUNC0(ptp->evt_frags[0], MCDI_EVENT_DATA);
	if (ptp->evt_frag_idx != 1) {
		FUNC2(efx, 1);
		return;
	}

	FUNC1(efx, hw, efx->net_dev, "PTP error %d\n", code);
}