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
struct netdata_local {int /*<<< orphan*/  napi; int /*<<< orphan*/  clk; TYPE_1__* pdev; } ;
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netdata_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdata_local*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct netdata_local* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct netdata_local*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct netdata_local *pldat = FUNC5(ndev);
	int ret;

	if (FUNC6(pldat))
		FUNC3(&pldat->pdev->dev, "enabling %s\n", ndev->name);

	ret = FUNC2(pldat->clk);
	if (ret)
		return ret;

	/* Suspended PHY makes LPC ethernet core block, so resume now */
	FUNC8(ndev->phydev);

	/* Reset and initialize */
	FUNC1(pldat);
	FUNC0(pldat);

	/* schedule a link state check */
	FUNC9(ndev->phydev);
	FUNC7(ndev);
	FUNC4(&pldat->napi);

	return 0;
}