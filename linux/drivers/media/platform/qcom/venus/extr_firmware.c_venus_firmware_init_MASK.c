#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct iommu_domain* iommu_domain; TYPE_2__* dev; } ;
struct venus_core {int use_tz; TYPE_1__ fw; TYPE_2__* dev; } ;
struct platform_device_info {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  name; TYPE_2__* parent; int /*<<< orphan*/ * fwnode; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct iommu_domain {int dummy; } ;
struct device_node {int /*<<< orphan*/  name; int /*<<< orphan*/  fwnode; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int FUNC4 (struct iommu_domain*,TYPE_2__*) ; 
 struct iommu_domain* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iommu_domain*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__*,struct device_node*,int) ; 
 struct device_node* FUNC9 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 struct platform_device* FUNC11 (struct platform_device_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 

int FUNC13(struct venus_core *core)
{
	struct platform_device_info info;
	struct iommu_domain *iommu_dom;
	struct platform_device *pdev;
	struct device_node *np;
	int ret;

	np = FUNC9(core->dev->of_node, "video-firmware");
	if (!np) {
		core->use_tz = true;
		return 0;
	}

	FUNC7(&info, 0, sizeof(info));
	info.fwnode = &np->fwnode;
	info.parent = core->dev;
	info.name = np->name;
	info.dma_mask = FUNC0(32);

	pdev = FUNC11(&info);
	if (FUNC1(pdev)) {
		FUNC10(np);
		return FUNC2(pdev);
	}

	pdev->dev.of_node = np;

	ret = FUNC8(&pdev->dev, np, true);
	if (ret) {
		FUNC3(core->dev, "dma configure fail\n");
		goto err_unregister;
	}

	core->fw.dev = &pdev->dev;

	iommu_dom = FUNC5(&platform_bus_type);
	if (!iommu_dom) {
		FUNC3(core->fw.dev, "Failed to allocate iommu domain\n");
		ret = -ENOMEM;
		goto err_unregister;
	}

	ret = FUNC4(iommu_dom, core->fw.dev);
	if (ret) {
		FUNC3(core->fw.dev, "could not attach device\n");
		goto err_iommu_free;
	}

	core->fw.iommu_domain = iommu_dom;

	FUNC10(np);

	return 0;

err_iommu_free:
	FUNC6(iommu_dom);
err_unregister:
	FUNC12(pdev);
	FUNC10(np);
	return ret;
}