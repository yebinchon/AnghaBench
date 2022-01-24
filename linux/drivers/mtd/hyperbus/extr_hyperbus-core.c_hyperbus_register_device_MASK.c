#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct map_info {int bankwidth; int /*<<< orphan*/  copy_from; int /*<<< orphan*/  copy_to; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct device_node* device_node; int /*<<< orphan*/  name; int /*<<< orphan*/  virt; int /*<<< orphan*/  size; } ;
struct hyperbus_ops {int (* calibrate ) (struct hyperbus_device*) ;scalar_t__ copy_from; scalar_t__ copy_to; scalar_t__ write16; scalar_t__ read16; } ;
struct hyperbus_device {TYPE_2__* mtd; struct map_info map; int /*<<< orphan*/  memtype; struct hyperbus_ctlr* ctlr; struct device_node* np; } ;
struct hyperbus_ctlr {int calibrated; struct hyperbus_ops* ops; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  HYPERFLASH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 TYPE_2__* FUNC5 (char*,struct map_info*) ; 
 int /*<<< orphan*/  hyperbus_copy_from ; 
 int /*<<< orphan*/  hyperbus_copy_to ; 
 int /*<<< orphan*/  hyperbus_read16 ; 
 int /*<<< orphan*/  hyperbus_write16 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct device_node*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*) ; 
 int /*<<< orphan*/  FUNC13 (struct map_info*) ; 
 int FUNC14 (struct hyperbus_device*) ; 

int FUNC15(struct hyperbus_device *hbdev)
{
	const struct hyperbus_ops *ops;
	struct hyperbus_ctlr *ctlr;
	struct device_node *np;
	struct map_info *map;
	struct resource res;
	struct device *dev;
	int ret;

	if (!hbdev || !hbdev->np || !hbdev->ctlr || !hbdev->ctlr->dev) {
		FUNC11("hyperbus: please fill all the necessary fields!\n");
		return -EINVAL;
	}

	np = hbdev->np;
	ctlr = hbdev->ctlr;
	if (!FUNC10(np, "cypress,hyperflash"))
		return -ENODEV;

	hbdev->memtype = HYPERFLASH;

	ret = FUNC9(np, 0, &res);
	if (ret)
		return ret;

	dev = ctlr->dev;
	map = &hbdev->map;
	map->size = FUNC12(&res);
	map->virt = FUNC4(dev, &res);
	if (FUNC0(map->virt))
		return FUNC1(map->virt);

	map->name = FUNC3(dev);
	map->bankwidth = 2;
	map->device_node = np;

	FUNC13(map);
	ops = ctlr->ops;
	if (ops) {
		if (ops->read16)
			map->read = hyperbus_read16;
		if (ops->write16)
			map->write = hyperbus_write16;
		if (ops->copy_to)
			map->copy_to = hyperbus_copy_to;
		if (ops->copy_from)
			map->copy_from = hyperbus_copy_from;

		if (ops->calibrate && !ctlr->calibrated) {
			ret = ops->calibrate(hbdev);
			if (!ret) {
				FUNC2(dev, "Calibration failed\n");
				return -ENODEV;
			}
			ctlr->calibrated = true;
		}
	}

	hbdev->mtd = FUNC5("cfi_probe", map);
	if (!hbdev->mtd) {
		FUNC2(dev, "probing of hyperbus device failed\n");
		return -ENODEV;
	}

	hbdev->mtd->dev.parent = dev;
	FUNC8(hbdev->mtd, np);

	ret = FUNC7(hbdev->mtd, NULL, 0);
	if (ret) {
		FUNC2(dev, "failed to register mtd device\n");
		FUNC6(hbdev->mtd);
		return ret;
	}

	return 0;
}