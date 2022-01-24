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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct bcm2835_pm {void* asb; void* base; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  bcm2835_pm_devs ; 
 int /*<<< orphan*/  bcm2835_power_devs ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 struct bcm2835_pm* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct bcm2835_pm*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct resource *res;
	struct device *dev = &pdev->dev;
	struct bcm2835_pm *pm;
	int ret;

	pm = FUNC4(dev, sizeof(*pm), GFP_KERNEL);
	if (!pm)
		return -ENOMEM;
	FUNC7(pdev, pm);

	pm->dev = dev;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	pm->base = FUNC3(dev, res);
	if (FUNC1(pm->base))
		return FUNC2(pm->base);

	ret = FUNC5(dev, -1,
				   bcm2835_pm_devs, FUNC0(bcm2835_pm_devs),
				   NULL, 0, NULL);
	if (ret)
		return ret;

	/* We'll use the presence of the AXI ASB regs in the
	 * bcm2835-pm binding as the key for whether we can reference
	 * the full PM register range and support power domains.
	 */
	res = FUNC6(pdev, IORESOURCE_MEM, 1);
	if (res) {
		pm->asb = FUNC3(dev, res);
		if (FUNC1(pm->asb))
			return FUNC2(pm->asb);

		ret = FUNC5(dev, -1,
					   bcm2835_power_devs,
					   FUNC0(bcm2835_power_devs),
					   NULL, 0, NULL);
		if (ret)
			return ret;
	}

	return 0;
}