#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_24__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_9__ dev; } ;
struct physmap_flash_info {int nmaps; int /*<<< orphan*/  nparts; int /*<<< orphan*/  parts; int /*<<< orphan*/  part_types; TYPE_4__* cmtd; int /*<<< orphan*/  vpp_lock; TYPE_4__** mtds; TYPE_2__* maps; scalar_t__ probe_type; TYPE_10__* gpios; scalar_t__ win_order; } ;
struct TYPE_21__ {TYPE_9__* parent; } ;
struct TYPE_23__ {TYPE_1__ dev; } ;
struct TYPE_22__ {unsigned long map_priv_1; int /*<<< orphan*/  read; int /*<<< orphan*/  size; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; TYPE_10__* virt; } ;
struct TYPE_20__ {int /*<<< orphan*/  ndescs; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (TYPE_10__*) ; 
 int FUNC3 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,char*,struct resource*) ; 
 TYPE_10__* FUNC8 (TYPE_9__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC9 (TYPE_9__*,struct resource*) ; 
 void* FUNC10 (TYPE_9__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (TYPE_4__**,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,scalar_t__) ; 
 int FUNC16 (TYPE_2__*) ; 
 int FUNC17 (struct platform_device*) ; 
 int FUNC18 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct physmap_flash_info*) ; 
 int /*<<< orphan*/  FUNC22 (struct resource*) ; 
 scalar_t__* rom_probe_types ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct platform_device *dev)
{
	struct physmap_flash_info *info;
	int err = 0;
	int i;

	if (!dev->dev.of_node && !FUNC5(&dev->dev))
		return -EINVAL;

	info = FUNC10(&dev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	while (FUNC20(dev, IORESOURCE_MEM, info->nmaps))
		info->nmaps++;

	if (!info->nmaps)
		return -ENODEV;

	info->maps = FUNC10(&dev->dev,
				  sizeof(*info->maps) * info->nmaps,
				  GFP_KERNEL);
	if (!info->maps)
		return -ENOMEM;

	info->mtds = FUNC10(&dev->dev,
				  sizeof(*info->mtds) * info->nmaps,
				  GFP_KERNEL);
	if (!info->mtds)
		return -ENOMEM;

	FUNC21(dev, info);

	info->gpios = FUNC8(&dev->dev, "addr",
						    GPIOD_OUT_LOW);
	if (FUNC2(info->gpios))
		return FUNC3(info->gpios);

	if (info->gpios && info->nmaps > 1) {
		FUNC4(&dev->dev, "addr-gpios only supported for nmaps == 1\n");
		return -EINVAL;
	}

	if (dev->dev.of_node)
		err = FUNC17(dev);
	else
		err = FUNC18(dev);

	if (err)
		return err;

	for (i = 0; i < info->nmaps; i++) {
		struct resource *res;

		res = FUNC20(dev, IORESOURCE_MEM, i);
		info->maps[i].virt = FUNC9(&dev->dev, res);
		if (FUNC2(info->maps[i].virt)) {
			err = FUNC3(info->maps[i].virt);
			goto err_out;
		}

		FUNC7(&dev->dev, "physmap platform flash device: %pR\n",
			   res);

		info->maps[i].name = FUNC6(&dev->dev);

		if (!info->maps[i].phys)
			info->maps[i].phys = res->start;

		info->win_order = FUNC12(FUNC22(res)) - 1;
		info->maps[i].size = FUNC1(info->win_order +
					 (info->gpios ?
					  info->gpios->ndescs : 0));

		info->maps[i].map_priv_1 = (unsigned long)dev;

		if (info->gpios) {
			err = FUNC16(&info->maps[i]);
			if (err)
				goto err_out;
		}

#ifdef CONFIG_MTD_COMPLEX_MAPPINGS
		/*
		 * Only use the simple_map implementation if map hooks are not
		 * implemented. Since map->read() is mandatory checking for its
		 * presence is enough.
		 */
		if (!info->maps[i].read)
			simple_map_init(&info->maps[i]);
#else
		FUNC23(&info->maps[i]);
#endif

		if (info->probe_type) {
			info->mtds[i] = FUNC11(info->probe_type,
						     &info->maps[i]);
		} else {
			int j;

			for (j = 0; j < FUNC0(rom_probe_types); j++) {
				info->mtds[i] = FUNC11(rom_probe_types[j],
							     &info->maps[i]);
				if (info->mtds[i])
					break;
			}
		}

		if (!info->mtds[i]) {
			FUNC4(&dev->dev, "map_probe failed\n");
			err = -ENXIO;
			goto err_out;
		}
		info->mtds[i]->dev.parent = &dev->dev;
	}

	if (info->nmaps == 1) {
		info->cmtd = info->mtds[0];
	} else {
		/*
		 * We detected multiple devices. Concatenate them together.
		 */
		info->cmtd = FUNC13(info->mtds, info->nmaps,
					       FUNC6(&dev->dev));
		if (!info->cmtd)
			err = -ENXIO;
	}
	if (err)
		goto err_out;

	FUNC24(&info->vpp_lock);

	FUNC15(info->cmtd, dev->dev.of_node);
	err = FUNC14(info->cmtd, info->part_types, NULL,
					info->parts, info->nparts);
	if (err)
		goto err_out;

	return 0;

err_out:
	FUNC19(dev);
	return err;
}