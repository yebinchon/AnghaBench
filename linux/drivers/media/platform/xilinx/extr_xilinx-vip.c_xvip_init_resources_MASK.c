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
struct xvip_device {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  iomem; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct resource*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct xvip_device *xvip)
{
	struct platform_device *pdev = FUNC6(xvip->dev);
	struct resource *res;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	xvip->iomem = FUNC4(xvip->dev, res);
	if (FUNC0(xvip->iomem))
		return FUNC1(xvip->iomem);

	xvip->clk = FUNC3(xvip->dev, NULL);
	if (FUNC0(xvip->clk))
		return FUNC1(xvip->clk);

	FUNC2(xvip->clk);
	return 0;
}