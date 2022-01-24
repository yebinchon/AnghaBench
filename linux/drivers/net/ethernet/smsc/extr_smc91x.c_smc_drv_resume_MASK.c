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
struct smc_local {scalar_t__ phy_type; int /*<<< orphan*/  phy_configure; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct smc_local* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct platform_device* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct platform_device *pdev = FUNC8(dev);
	struct net_device *ndev = FUNC3(pdev);

	if (ndev) {
		struct smc_local *lp = FUNC0(ndev);
		FUNC5(pdev);
		if (FUNC2(ndev)) {
			FUNC7(ndev);
			FUNC4(ndev);
			if (lp->phy_type != 0)
				FUNC6(&lp->phy_configure);
			FUNC1(ndev);
		}
	}
	return 0;
}