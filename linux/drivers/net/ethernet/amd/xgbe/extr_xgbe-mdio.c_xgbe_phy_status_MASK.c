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
struct TYPE_6__ {scalar_t__ autoneg; scalar_t__ link; } ;
struct TYPE_4__ {scalar_t__ (* link_status ) (struct xgbe_prv_data*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; int /*<<< orphan*/  dev_state; TYPE_3__ phy; TYPE_2__ phy_if; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  XGBE_LINK_ERR ; 
 int /*<<< orphan*/  XGBE_LINK_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xgbe_prv_data*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC10(struct xgbe_prv_data *pdata)
{
	unsigned int link_aneg;
	int an_restart;

	if (FUNC4(XGBE_LINK_ERR, &pdata->dev_state)) {
		FUNC1(pdata->netdev);

		pdata->phy.link = 0;
		goto adjust_link;
	}

	link_aneg = (pdata->phy.autoneg == AUTONEG_ENABLE);

	pdata->phy.link = pdata->phy_if.phy_impl.link_status(pdata,
							     &an_restart);
	if (an_restart) {
		FUNC8(pdata);
		return;
	}

	if (pdata->phy.link) {
		if (link_aneg && !FUNC7(pdata)) {
			FUNC5(pdata);
			return;
		}

		FUNC9(pdata);

		if (FUNC4(XGBE_LINK_INIT, &pdata->dev_state))
			FUNC0(XGBE_LINK_INIT, &pdata->dev_state);

		FUNC2(pdata->netdev);
	} else {
		if (FUNC4(XGBE_LINK_INIT, &pdata->dev_state)) {
			FUNC5(pdata);

			if (link_aneg)
				return;
		}

		FUNC9(pdata);

		FUNC1(pdata->netdev);
	}

adjust_link:
	FUNC6(pdata);
}