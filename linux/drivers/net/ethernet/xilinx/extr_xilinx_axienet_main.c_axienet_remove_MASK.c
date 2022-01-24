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
struct net_device {int dummy; } ;
struct axienet_local {int /*<<< orphan*/ * phy_node; scalar_t__ clk; scalar_t__ phylink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct axienet_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct net_device* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC6(pdev);
	struct axienet_local *lp = FUNC3(ndev);

	FUNC7(ndev);

	if (lp->phylink)
		FUNC5(lp->phylink);

	FUNC0(lp);

	if (lp->clk)
		FUNC1(lp->clk);

	FUNC4(lp->phy_node);
	lp->phy_node = NULL;

	FUNC2(ndev);

	return 0;
}