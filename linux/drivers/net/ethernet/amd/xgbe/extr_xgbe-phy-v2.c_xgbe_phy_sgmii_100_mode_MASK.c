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
struct xgbe_phy_data {int /*<<< orphan*/  cur_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGBE_MODE_SGMII_100 ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;

	FUNC2(pdata);

	/* 100M/SGMII */
	FUNC1(pdata, 1, 1);

	phy_data->cur_mode = XGBE_MODE_SGMII_100;

	FUNC0(pdata, link, pdata->netdev, "100MbE SGMII mode set\n");
}