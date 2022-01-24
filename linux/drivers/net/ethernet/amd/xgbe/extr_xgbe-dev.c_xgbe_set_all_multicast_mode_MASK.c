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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_PFR ; 
 int /*<<< orphan*/  PM ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct xgbe_prv_data *pdata,
				       unsigned int enable)
{
	unsigned int val = enable ? 1 : 0;

	if (FUNC0(pdata, MAC_PFR, PM) == val)
		return 0;

	FUNC2(pdata, drv, pdata->netdev, "%s allmulti mode\n",
		  enable ? "entering" : "leaving");
	FUNC1(pdata, MAC_PFR, PM, val);

	return 0;
}