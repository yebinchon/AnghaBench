#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ef4_nic {int phy_mode; int /*<<< orphan*/  wanted_fc; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* init_phy ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int HZ ; 
 int PHY_MODE_SPECIAL ; 
 int /*<<< orphan*/  TENXPRESS_REQUIRED_DEVS ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*) ; 
 int FUNC8 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC9(struct ef4_nic *efx)
{
	int rc;

	FUNC4(efx)->type->init_phy(efx);

	if (!(efx->phy_mode & PHY_MODE_SPECIAL)) {
		rc = FUNC3(efx, TENXPRESS_REQUIRED_DEVS);
		if (rc < 0)
			return rc;

		rc = FUNC2(efx, TENXPRESS_REQUIRED_DEVS);
		if (rc < 0)
			return rc;
	}

	rc = FUNC8(efx);
	if (rc < 0)
		return rc;

	/* Reinitialise flow control settings */
	FUNC0(efx, efx->wanted_fc);
	FUNC1(efx);

	FUNC6(HZ / 5); /* 200ms */

	/* Let XGXS and SerDes out of reset */
	FUNC5(efx);

	return 0;
}