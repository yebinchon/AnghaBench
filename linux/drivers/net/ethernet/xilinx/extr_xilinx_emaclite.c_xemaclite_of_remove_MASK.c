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
struct platform_device {int dummy; } ;
struct net_local {int /*<<< orphan*/ * phy_node; int /*<<< orphan*/ * mii_bus; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *of_dev)
{
	struct net_device *ndev = FUNC5(of_dev);

	struct net_local *lp = FUNC3(ndev);

	/* Un-register the mii_bus, if configured */
	if (lp->mii_bus) {
		FUNC2(lp->mii_bus);
		FUNC1(lp->mii_bus);
		lp->mii_bus = NULL;
	}

	FUNC6(ndev);

	FUNC4(lp->phy_node);
	lp->phy_node = NULL;

	FUNC0(ndev);

	return 0;
}