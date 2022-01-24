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
struct xgbe_prv_data {int /*<<< orphan*/  phy_if; TYPE_1__* vdata; int /*<<< orphan*/  desc_if; int /*<<< orphan*/  i2c_if; int /*<<< orphan*/  hw_if; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init_function_ptrs_phy_impl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct xgbe_prv_data *pdata)
{
	FUNC2(&pdata->hw_if);
	FUNC4(&pdata->phy_if);
	FUNC3(&pdata->i2c_if);
	FUNC1(&pdata->desc_if);

	pdata->vdata->init_function_ptrs_phy_impl(&pdata->phy_if);
}