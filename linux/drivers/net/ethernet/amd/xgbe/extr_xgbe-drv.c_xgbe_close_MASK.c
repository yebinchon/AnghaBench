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
struct xgbe_prv_data {int /*<<< orphan*/  dev_state; int /*<<< orphan*/  dev_workqueue; int /*<<< orphan*/  an_workqueue; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  ptpclk; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGBE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xgbe_prv_data* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct xgbe_prv_data *pdata = FUNC3(netdev);

	/* Stop the device */
	FUNC6(pdata);

	FUNC5(pdata);

	/* Disable the clocks */
	FUNC0(pdata->ptpclk);
	FUNC0(pdata->sysclk);

	FUNC2(pdata->an_workqueue);
	FUNC1(pdata->an_workqueue);

	FUNC2(pdata->dev_workqueue);
	FUNC1(pdata->dev_workqueue);

	FUNC4(XGBE_DOWN, &pdata->dev_state);

	return 0;
}