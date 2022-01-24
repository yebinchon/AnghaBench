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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct kempld_platform_data {int /*<<< orphan*/  pld_clock; } ;
struct kempld_device_data {int /*<<< orphan*/  lock; struct device* dev; int /*<<< orphan*/  pld_clock; scalar_t__ io_base; scalar_t__ io_data; scalar_t__ io_index; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 struct kempld_platform_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kempld_device_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	const struct kempld_platform_data *pdata =
		FUNC0(&pdev->dev);
	struct device *dev = &pdev->dev;
	struct kempld_device_data *pld;
	struct resource *ioport;

	pld = FUNC2(dev, sizeof(*pld), GFP_KERNEL);
	if (!pld)
		return -ENOMEM;

	ioport = FUNC5(pdev, IORESOURCE_IO, 0);
	if (!ioport)
		return -EINVAL;

	pld->io_base = FUNC1(dev, ioport->start,
					FUNC7(ioport));
	if (!pld->io_base)
		return -ENOMEM;

	pld->io_index = pld->io_base;
	pld->io_data = pld->io_base + 1;
	pld->pld_clock = pdata->pld_clock;
	pld->dev = dev;

	FUNC4(&pld->lock);
	FUNC6(pdev, pld);

	return FUNC3(pld);
}