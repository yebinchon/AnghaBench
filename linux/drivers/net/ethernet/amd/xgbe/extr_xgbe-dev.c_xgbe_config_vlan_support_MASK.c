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
 int /*<<< orphan*/  CSVL ; 
 int /*<<< orphan*/  MAC_VLANIR ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  VLTI ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC6(struct xgbe_prv_data *pdata)
{
	/* Indicate that VLAN Tx CTAGs come from context descriptors */
	FUNC0(pdata, MAC_VLANIR, CSVL, 0);
	FUNC0(pdata, MAC_VLANIR, VLTI, 1);

	/* Set the current VLAN Hash Table register value */
	FUNC5(pdata);

	if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
		FUNC3(pdata);
	else
		FUNC1(pdata);

	if (pdata->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC4(pdata);
	else
		FUNC2(pdata);
}