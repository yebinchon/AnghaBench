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
struct resource {int dummy; } ;
struct TYPE_2__ {struct device* parent; int /*<<< orphan*/ * dma_mask; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,void*,size_t) ; 
 int FUNC5 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  usbhs_dmamask ; 

__attribute__((used)) static struct platform_device *FUNC8(const char *name,
			struct resource	*res, int num_resources, void *pdata,
			size_t pdata_size, struct device *dev)
{
	struct platform_device	*child;
	int			ret;

	child = FUNC6(name, 0);

	if (!child) {
		FUNC1(dev, "platform_device_alloc %s failed\n", name);
		goto err_end;
	}

	ret = FUNC5(child, res, num_resources);
	if (ret) {
		FUNC1(dev, "platform_device_add_resources failed\n");
		goto err_alloc;
	}

	ret = FUNC4(child, pdata, pdata_size);
	if (ret) {
		FUNC1(dev, "platform_device_add_data failed\n");
		goto err_alloc;
	}

	child->dev.dma_mask		= &usbhs_dmamask;
	FUNC2(&child->dev, FUNC0(32));
	child->dev.parent		= dev;

	ret = FUNC3(child);
	if (ret) {
		FUNC1(dev, "platform_device_add failed\n");
		goto err_alloc;
	}

	return child;

err_alloc:
	FUNC7(child);

err_end:
	return NULL;
}