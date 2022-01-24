#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ef4_nic {TYPE_2__* phy_op; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mac_lock; } ;
struct TYPE_6__ {TYPE_1__* type; } ;
struct TYPE_5__ {int (* poll ) (struct ef4_nic*) ;} ;
struct TYPE_4__ {int (* monitor ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERANGE ; 
 scalar_t__ FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  PHY_MODE_LOW_POWER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 TYPE_3__* FUNC5 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*) ; 
 int FUNC7 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*) ; 
 int FUNC9 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC10 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC11 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct ef4_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC15 (struct ef4_nic*) ; 
 int FUNC16 (struct ef4_nic*) ; 

__attribute__((used)) static void FUNC17(struct ef4_nic *efx)
{
	bool link_changed;
	int rc;

	FUNC0(!FUNC13(&efx->mac_lock));

	rc = FUNC5(efx)->type->monitor(efx);
	if (rc) {
		FUNC14(efx, hw, efx->net_dev,
			  "Board sensor %s; shutting down PHY\n",
			  (rc == -ERANGE) ? "reported fault" : "failed");
		efx->phy_mode |= PHY_MODE_LOW_POWER;
		rc = FUNC3(efx);
		FUNC2(rc);
	}

	if (FUNC1(efx))
		link_changed = FUNC7(efx);
	else
		link_changed = efx->phy_op->poll(efx);

	if (link_changed) {
		FUNC12(efx);
		FUNC6(efx);

		FUNC10(efx);
		rc = FUNC9(efx);
		FUNC0(rc);

		FUNC11(efx);

		FUNC4(efx);
	}

	FUNC8(efx);
}