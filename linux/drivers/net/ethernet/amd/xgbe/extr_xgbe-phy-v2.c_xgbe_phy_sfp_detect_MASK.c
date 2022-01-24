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
struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ sfp_mod_absent; } ;

/* Variables and functions */
 int FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int FUNC6 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_phy_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC9(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;
	int ret;

	/* Reset the SFP signals and info */
	FUNC7(phy_data);

	ret = FUNC0(pdata);
	if (ret)
		return;

	/* Read the SFP signals and check for module presence */
	FUNC8(pdata);
	if (phy_data->sfp_mod_absent) {
		FUNC3(pdata);
		goto put;
	}

	ret = FUNC6(pdata);
	if (ret) {
		/* Treat any error as if there isn't an SFP plugged in */
		FUNC7(phy_data);
		FUNC3(pdata);
		goto put;
	}

	FUNC4(pdata);

	FUNC2(pdata);

put:
	FUNC5(pdata);

	FUNC1(pdata);
}