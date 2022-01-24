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
struct efx_nic {scalar_t__ mcdi; int /*<<< orphan*/  pci_dev; } ;
struct efx_mcdi_iface {int /*<<< orphan*/  mode; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;

/* Variables and functions */
 int /*<<< orphan*/  MCDI_MODE_POLL ; 
 int RESET_TYPE_DATAPATH ; 
 int RESET_TYPE_MCDI_TIMEOUT ; 
 int RESET_TYPE_WORLD ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 int FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct efx_nic *efx, enum reset_type method)
{
	int rc;

	/* If MCDI is down, we can't handle_assertion */
	if (method == RESET_TYPE_MCDI_TIMEOUT) {
		rc = FUNC4(efx->pci_dev);
		if (rc)
			return rc;
		/* Re-enable polled MCDI completion */
		if (efx->mcdi) {
			struct efx_mcdi_iface *mcdi = FUNC0(efx);
			mcdi->mode = MCDI_MODE_POLL;
		}
		return 0;
	}

	/* Recover from a failed assertion pre-reset */
	rc = FUNC1(efx);
	if (rc)
		return rc;

	if (method == RESET_TYPE_DATAPATH)
		return 0;
	else if (method == RESET_TYPE_WORLD)
		return FUNC3(efx);
	else
		return FUNC2(efx);
}