#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_8__ {unsigned long size; int /*<<< orphan*/  virt; int /*<<< orphan*/  phys; int /*<<< orphan*/  bankwidth; int /*<<< orphan*/  name; } ;
struct rbtx4939_flash_info {TYPE_4__* mtd; TYPE_2__ map; } ;
struct rbtx4939_flash_data {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/  parts; int /*<<< orphan*/  (* map_init ) (TYPE_2__*) ;int /*<<< orphan*/  width; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rbtx4939_flash_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct rbtx4939_flash_info* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (char const* const,TYPE_2__*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rbtx4939_flash_info*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 unsigned long FUNC12 (struct resource*) ; 
 char** rom_probe_types ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *dev)
{
	struct rbtx4939_flash_data *pdata;
	struct rbtx4939_flash_info *info;
	struct resource *res;
	const char * const *probe_type;
	int err = 0;
	unsigned long size;

	pdata = FUNC1(&dev->dev);
	if (!pdata)
		return -ENODEV;

	res = FUNC8(dev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	info = FUNC4(&dev->dev, sizeof(struct rbtx4939_flash_info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	FUNC9(dev, info);

	size = FUNC12(res);
	FUNC10("rbtx4939 platform flash device: %pR\n", res);

	if (!FUNC5(&dev->dev, res->start, size,
				     FUNC2(&dev->dev)))
		return -EBUSY;

	info->map.name = FUNC2(&dev->dev);
	info->map.phys = res->start;
	info->map.size = size;
	info->map.bankwidth = pdata->width;

	info->map.virt = FUNC3(&dev->dev, info->map.phys, size);
	if (!info->map.virt)
		return -EBUSY;

	if (pdata->map_init)
		(*pdata->map_init)(&info->map);
	else
		FUNC13(&info->map);

	probe_type = rom_probe_types;
	for (; !info->mtd && *probe_type; probe_type++)
		info->mtd = FUNC6(*probe_type, &info->map);
	if (!info->mtd) {
		FUNC0(&dev->dev, "map_probe failed\n");
		err = -ENXIO;
		goto err_out;
	}
	info->mtd->dev.parent = &dev->dev;
	err = FUNC7(info->mtd, pdata->parts, pdata->nr_parts);

	if (err)
		goto err_out;
	return 0;

err_out:
	FUNC11(dev);
	return err;
}