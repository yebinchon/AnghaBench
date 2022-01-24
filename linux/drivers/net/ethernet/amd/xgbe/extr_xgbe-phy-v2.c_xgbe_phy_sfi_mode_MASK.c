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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ sfp_cable; int sfp_cable_len; int /*<<< orphan*/  cur_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGBE_MODE_SFI ; 
 scalar_t__ XGBE_SFP_CABLE_PASSIVE ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;

	FUNC2(pdata);

	/* 10G/SFI */
	if (phy_data->sfp_cable != XGBE_SFP_CABLE_PASSIVE) {
		FUNC1(pdata, 3, 0);
	} else {
		if (phy_data->sfp_cable_len <= 1)
			FUNC1(pdata, 3, 1);
		else if (phy_data->sfp_cable_len <= 3)
			FUNC1(pdata, 3, 2);
		else
			FUNC1(pdata, 3, 3);
	}

	phy_data->cur_mode = XGBE_MODE_SFI;

	FUNC0(pdata, link, pdata->netdev, "10GbE SFI mode set\n");
}