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
struct ef4_nic {int reset_pending; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  state; int /*<<< orphan*/  pci_dev; TYPE_1__* type; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_2__ {int (* reset ) (struct ef4_nic*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RESET_TYPE_DISABLE ; 
 int RESET_TYPE_MAX_METHOD ; 
 int RESET_TYPE_RECOVER_OR_DISABLE ; 
 int /*<<< orphan*/  STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int) ; 
 int FUNC5 (struct ef4_nic*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ef4_nic*,int) ; 

int FUNC12(struct ef4_nic *efx, enum reset_type method)
{
	int rc, rc2;
	bool disabled;

	FUNC9(efx, drv, efx->net_dev, "resetting (%s)\n",
		   FUNC0(method));

	FUNC3(efx);
	FUNC4(efx, method);

	rc = efx->type->reset(efx, method);
	if (rc) {
		FUNC8(efx, drv, efx->net_dev, "failed to reset hardware\n");
		goto out;
	}

	/* Clear flags for the scopes we covered.  We assume the NIC and
	 * driver are now quiescent so that there is no race here.
	 */
	if (method < RESET_TYPE_MAX_METHOD)
		efx->reset_pending &= -(1 << (method + 1));
	else /* it doesn't fit into the well-ordered scope hierarchy */
		FUNC1(method, &efx->reset_pending);

	/* Reinitialise bus-mastering, which may have been turned off before
	 * the reset was scheduled. This is still appropriate, even in the
	 * RESET_TYPE_DISABLE since this driver generally assumes the hardware
	 * can respond to requests. */
	FUNC10(efx->pci_dev);

out:
	/* Leave device stopped if necessary */
	disabled = rc ||
		method == RESET_TYPE_DISABLE ||
		method == RESET_TYPE_RECOVER_OR_DISABLE;
	rc2 = FUNC5(efx, method, !disabled);
	if (rc2) {
		disabled = true;
		if (!rc)
			rc = rc2;
	}

	if (disabled) {
		FUNC2(efx->net_dev);
		FUNC8(efx, drv, efx->net_dev, "has been disabled\n");
		efx->state = STATE_DISABLED;
	} else {
		FUNC6(efx, drv, efx->net_dev, "reset complete\n");
		FUNC7(efx->net_dev);
	}
	return rc;
}