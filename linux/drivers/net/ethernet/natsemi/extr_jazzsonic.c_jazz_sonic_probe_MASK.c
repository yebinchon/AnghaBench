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
struct sonic_local {int /*<<< orphan*/ * device; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SONIC_MEM_SIZE ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct sonic_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct net_device *dev;
	struct sonic_local *lp;
	struct resource *res;
	int err = 0;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	dev = FUNC1(sizeof(struct sonic_local));
	if (!dev)
		return -ENOMEM;

	lp = FUNC4(dev);
	lp->device = &pdev->dev;
	FUNC0(dev, &pdev->dev);
	FUNC7(pdev, dev);

	FUNC3(dev);

	dev->base_addr = res->start;
	dev->irq = FUNC5(pdev, 0);
	err = FUNC12(dev);
	if (err)
		goto out;

	FUNC8("SONIC ethernet @%08lx, MAC %pM, IRQ %d\n",
		dev->base_addr, dev->dev_addr, dev->irq);

	FUNC11(dev);

	err = FUNC9(dev);
	if (err)
		goto out1;

	return 0;

out1:
	FUNC10(dev->base_addr, SONIC_MEM_SIZE);
out:
	FUNC2(dev);

	return err;
}