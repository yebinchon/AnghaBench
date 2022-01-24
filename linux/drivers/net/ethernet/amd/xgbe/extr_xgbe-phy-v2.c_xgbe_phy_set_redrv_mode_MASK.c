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
struct xgbe_phy_data {scalar_t__ port_mode; scalar_t__ sfp_base; scalar_t__ redrv_if; int /*<<< orphan*/  redrv; } ;
typedef  enum xgbe_phy_redrv_mode { ____Placeholder_xgbe_phy_redrv_mode } xgbe_phy_redrv_mode ;

/* Variables and functions */
 int XGBE_PHY_REDRV_MODE_CX ; 
 int XGBE_PHY_REDRV_MODE_SR ; 
 scalar_t__ XGBE_PORT_MODE_SFP ; 
 scalar_t__ XGBE_SFP_BASE_10000_CR ; 
 scalar_t__ XGBE_SFP_BASE_1000_CX ; 
 int FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,int) ; 

__attribute__((used)) static void FUNC4(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;
	enum xgbe_phy_redrv_mode mode;
	int ret;

	if (!phy_data->redrv)
		return;

	mode = XGBE_PHY_REDRV_MODE_CX;
	if ((phy_data->port_mode == XGBE_PORT_MODE_SFP) &&
	    (phy_data->sfp_base != XGBE_SFP_BASE_1000_CX) &&
	    (phy_data->sfp_base != XGBE_SFP_BASE_10000_CR))
		mode = XGBE_PHY_REDRV_MODE_SR;

	ret = FUNC0(pdata);
	if (ret)
		return;

	if (phy_data->redrv_if)
		FUNC2(pdata, mode);
	else
		FUNC3(pdata, mode);

	FUNC1(pdata);
}