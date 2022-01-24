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
struct efx_nic {TYPE_1__* ptp_data; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int enabled; unsigned int mode; } ;

/* Variables and functions */
 int PTP_SYNC_ATTEMPTS ; 
 int FUNC0 (struct efx_nic*) ; 
 int FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct efx_nic *efx, bool enable_wanted,
			unsigned int new_mode)
{
	if ((enable_wanted != efx->ptp_data->enabled) ||
	    (enable_wanted && (efx->ptp_data->mode != new_mode))) {
		int rc = 0;

		if (enable_wanted) {
			/* Change of mode requires disable */
			if (efx->ptp_data->enabled &&
			    (efx->ptp_data->mode != new_mode)) {
				efx->ptp_data->enabled = false;
				rc = FUNC1(efx);
				if (rc != 0)
					return rc;
			}

			/* Set new operating mode and establish
			 * baseline synchronisation, which must
			 * succeed.
			 */
			efx->ptp_data->mode = new_mode;
			if (FUNC3(efx->net_dev))
				rc = FUNC0(efx);
			if (rc == 0) {
				rc = FUNC2(efx,
							 PTP_SYNC_ATTEMPTS * 2);
				if (rc != 0)
					FUNC1(efx);
			}
		} else {
			rc = FUNC1(efx);
		}

		if (rc != 0)
			return rc;

		efx->ptp_data->enabled = enable_wanted;
	}

	return 0;
}