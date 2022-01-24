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
struct TYPE_2__ {int /*<<< orphan*/  (* i2c_stop ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {TYPE_1__ i2c_if; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_phy_data*) ; 

__attribute__((used)) static void FUNC6(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;

	/* If we have an external PHY, free it */
	FUNC2(pdata);

	/* Reset SFP data */
	FUNC5(phy_data);
	FUNC4(pdata);

	/* Reset CDR support */
	FUNC1(pdata);

	/* Power off the PHY */
	FUNC3(pdata);

	/* Stop the I2C controller */
	pdata->i2c_if.i2c_stop(pdata);
}