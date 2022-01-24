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
struct TYPE_2__ {int /*<<< orphan*/ * ops; struct vsc73xx_platform* priv; struct device* dev; } ;
struct vsc73xx_platform {TYPE_1__ vsc; int /*<<< orphan*/  base_addr; struct platform_device* pdev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct resource*) ; 
 struct vsc73xx_platform* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct vsc73xx_platform*) ; 
 int /*<<< orphan*/  vsc73xx_platform_ops ; 
 int FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct vsc73xx_platform *vsc_platform;
	struct resource *res = NULL;
	int ret;

	vsc_platform = FUNC3(dev, sizeof(*vsc_platform), GFP_KERNEL);
	if (!vsc_platform)
		return -ENOMEM;

	FUNC5(pdev, vsc_platform);
	vsc_platform->pdev = pdev;
	vsc_platform->vsc.dev = dev;
	vsc_platform->vsc.priv = vsc_platform;
	vsc_platform->vsc.ops = &vsc73xx_platform_ops;

	/* obtain I/O memory space */
	res = FUNC4(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC1(&pdev->dev, "cannot obtain I/O memory space\n");
		ret = -ENXIO;
		return ret;
	}

	vsc_platform->base_addr = FUNC2(&pdev->dev, res);
	if (FUNC0(vsc_platform->base_addr)) {
		FUNC1(&pdev->dev, "cannot request I/O memory space\n");
		ret = -ENXIO;
		return ret;
	}

	return FUNC6(&vsc_platform->vsc);
}