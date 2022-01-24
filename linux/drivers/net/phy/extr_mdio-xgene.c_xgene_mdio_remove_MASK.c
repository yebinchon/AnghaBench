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
struct xgene_mdio_pdata {int /*<<< orphan*/  clk; struct mii_bus* mdio_bus; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*) ; 
 struct xgene_mdio_pdata* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct xgene_mdio_pdata *pdata = FUNC3(pdev);
	struct mii_bus *mdio_bus = pdata->mdio_bus;
	struct device *dev = &pdev->dev;

	FUNC2(mdio_bus);
	FUNC1(mdio_bus);

	if (dev->of_node)
		FUNC0(pdata->clk);

	return 0;
}