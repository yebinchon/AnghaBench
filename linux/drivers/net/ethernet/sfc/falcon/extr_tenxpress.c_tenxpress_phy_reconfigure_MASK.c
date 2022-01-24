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
struct tenxpress_phy_data {int phy_mode; int /*<<< orphan*/  loopback_mode; } ;
struct ef4_nic {int phy_mode; int /*<<< orphan*/  loopback_mode; struct tenxpress_phy_data* phy_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 scalar_t__ FUNC1 (struct tenxpress_phy_data*,struct ef4_nic*,int) ; 
 int LOOPBACK_GPHY ; 
 scalar_t__ FUNC2 (struct tenxpress_phy_data*,struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int PHY_MODE_NORMAL ; 
 int PHY_MODE_OFF ; 
 int PHY_MODE_SPECIAL ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC9 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC10(struct ef4_nic *efx)
{
	struct tenxpress_phy_data *phy_data = efx->phy_data;
	bool phy_mode_change, loop_reset;

	if (efx->phy_mode & (PHY_MODE_OFF | PHY_MODE_SPECIAL)) {
		phy_data->phy_mode = efx->phy_mode;
		return 0;
	}

	phy_mode_change = (efx->phy_mode == PHY_MODE_NORMAL &&
			   phy_data->phy_mode != PHY_MODE_NORMAL);
	loop_reset = (FUNC2(phy_data, efx, FUNC0(efx)) ||
		      FUNC1(phy_data, efx, 1 << LOOPBACK_GPHY));

	if (loop_reset || phy_mode_change) {
		FUNC9(efx);
		FUNC6(efx);
	}

	FUNC8(efx);
	FUNC5(efx);
	FUNC4(efx);
	FUNC7(efx);
	FUNC3(efx);

	phy_data->loopback_mode = efx->loopback_mode;
	phy_data->phy_mode = efx->phy_mode;

	return 0;
}