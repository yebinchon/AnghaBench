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
struct ef4_self_tests {int registers; } ;
struct ef4_nic {int loopback_modes; int loopback_mode; int /*<<< orphan*/  mac_lock; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LOOPBACK_XGMII ; 
 int RESET_TYPE_INVISIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int) ; 
 int FUNC5 (struct ef4_nic*,int,int) ; 
 int /*<<< orphan*/  falcon_b0_register_tests ; 
 int FUNC6 (struct ef4_nic*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct ef4_nic *efx, struct ef4_self_tests *tests)
{
	enum reset_type reset_method = RESET_TYPE_INVISIBLE;
	int rc, rc2;

	FUNC7(&efx->mac_lock);
	if (efx->loopback_modes) {
		/* We need the 312 clock from the PHY to test the XMAC
		 * registers, so move into XGMII loopback if available */
		if (efx->loopback_modes & (1 << LOOPBACK_XGMII))
			efx->loopback_mode = LOOPBACK_XGMII;
		else
			efx->loopback_mode = FUNC2(efx->loopback_modes);
	}
	FUNC1(efx);
	FUNC8(&efx->mac_lock);

	FUNC4(efx, reset_method);

	tests->registers =
		FUNC3(efx, falcon_b0_register_tests,
					 FUNC0(falcon_b0_register_tests))
		? -1 : 1;

	rc = FUNC6(efx, reset_method);
	rc2 = FUNC5(efx, reset_method, rc == 0);
	return rc ? rc : rc2;
}