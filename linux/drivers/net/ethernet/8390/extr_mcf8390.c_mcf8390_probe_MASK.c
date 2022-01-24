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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct net_device *dev;
	struct resource *mem, *irq;
	resource_size_t msize;
	int ret;

	irq = FUNC5(pdev, IORESOURCE_IRQ, 0);
	if (irq == NULL) {
		FUNC2(&pdev->dev, "no IRQ specified?\n");
		return -ENXIO;
	}

	mem = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (mem == NULL) {
		FUNC2(&pdev->dev, "no memory address specified?\n");
		return -ENXIO;
	}
	msize = FUNC9(mem);
	if (!FUNC8(mem->start, msize, pdev->name))
		return -EBUSY;

	dev = FUNC1(0);
	if (dev == NULL) {
		FUNC7(mem->start, msize);
		return -ENOMEM;
	}

	FUNC0(dev, &pdev->dev);
	FUNC6(pdev, dev);

	dev->irq = irq->start;
	dev->base_addr = mem->start;

	ret = FUNC4(dev);
	if (ret) {
		FUNC7(mem->start, msize);
		FUNC3(dev);
		return ret;
	}
	return 0;
}