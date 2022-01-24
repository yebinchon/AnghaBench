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
struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_PFR ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int /*<<< orphan*/  PR ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC5(struct xgbe_prv_data *pdata,
				     unsigned int enable)
{
	unsigned int val = enable ? 1 : 0;

	if (FUNC0(pdata, MAC_PFR, PR) == val)
		return 0;

	FUNC2(pdata, drv, pdata->netdev, "%s promiscuous mode\n",
		  enable ? "entering" : "leaving");
	FUNC1(pdata, MAC_PFR, PR, val);

	/* Hardware will still perform VLAN filtering in promiscuous mode */
	if (enable) {
		FUNC3(pdata);
	} else {
		if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
			FUNC4(pdata);
	}

	return 0;
}