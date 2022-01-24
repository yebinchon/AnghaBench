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
struct TYPE_2__ {int /*<<< orphan*/  (* phy_exit ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {TYPE_1__ phy_if; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PTP_1588_CLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 

void FUNC5(struct xgbe_prv_data *pdata)
{
	struct net_device *netdev = pdata->netdev;

	FUNC3(pdata);

	if (FUNC0(CONFIG_PTP_1588_CLOCK))
		FUNC4(pdata);

	FUNC2(netdev);

	pdata->phy_if.phy_exit(pdata);
}