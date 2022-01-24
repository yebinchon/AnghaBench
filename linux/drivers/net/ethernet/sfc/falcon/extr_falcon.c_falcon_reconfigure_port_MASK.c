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
struct ef4_nic {TYPE_1__* phy_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reconfigure ) (struct ef4_nic*) ;int /*<<< orphan*/  (* poll ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EF4_REV_FALCON_B0 ; 
 scalar_t__ FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 scalar_t__ FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*) ; 
 int FUNC7 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC13(struct ef4_nic *efx)
{
	int rc;

	FUNC2(FUNC4(efx) > EF4_REV_FALCON_B0);

	/* Poll the PHY link state *before* reconfiguring it. This means we
	 * will pick up the correct speed (in loopback) to select the correct
	 * MAC.
	 */
	if (FUNC1(efx))
		FUNC6(efx);
	else
		efx->phy_op->poll(efx);

	FUNC10(efx);
	FUNC5(efx);

	FUNC8(efx);

	efx->phy_op->reconfigure(efx);
	rc = FUNC7(efx);
	FUNC0(rc);

	FUNC9(efx);

	/* Synchronise efx->link_state with the kernel */
	FUNC3(efx);

	return 0;
}