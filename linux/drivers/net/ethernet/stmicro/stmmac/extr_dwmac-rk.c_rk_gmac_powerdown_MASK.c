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
struct rk_priv_data {scalar_t__ integrated_phy; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rk_priv_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_priv_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk_priv_data*) ; 

__attribute__((used)) static void FUNC5(struct rk_priv_data *gmac)
{
	struct device *dev = &gmac->pdev->dev;

	if (gmac->integrated_phy)
		FUNC4(gmac);

	FUNC3(dev);
	FUNC2(dev);

	FUNC1(gmac, false);
	FUNC0(gmac, false);
}