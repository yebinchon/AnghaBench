#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; struct resource* resource; } ;
struct onenand_platform_data {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/ * parts; int /*<<< orphan*/ * mmcontrol; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; int /*<<< orphan*/  irq; int /*<<< orphan*/ * mmcontrol; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {TYPE_2__* priv; TYPE_1__ dev; } ;
struct onenand_info {TYPE_2__ onenand; TYPE_3__ mtd; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct onenand_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct onenand_info*) ; 
 struct onenand_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct onenand_info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC12 (struct resource*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct onenand_info *info;
	struct onenand_platform_data *pdata = FUNC0(&pdev->dev);
	struct resource *res = pdev->resource;
	unsigned long size = FUNC12(res);
	int err;

	info = FUNC5(sizeof(struct onenand_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	if (!FUNC11(res->start, size, FUNC1(&pdev->dev))) {
		err = -EBUSY;
		goto out_free_info;
	}

	info->onenand.base = FUNC2(res->start, size);
	if (!info->onenand.base) {
		err = -ENOMEM;
		goto out_release_mem_region;
	}

	info->onenand.mmcontrol = pdata ? pdata->mmcontrol : NULL;
	info->onenand.irq = FUNC8(pdev, 0);

	info->mtd.dev.parent = &pdev->dev;
	info->mtd.priv = &info->onenand;

	if (FUNC7(&info->mtd, 1)) {
		err = -ENXIO;
		goto out_iounmap;
	}

	err = FUNC6(&info->mtd, pdata ? pdata->parts : NULL,
				  pdata ? pdata->nr_parts : 0);

	FUNC9(pdev, info);

	return 0;

out_iounmap:
	FUNC3(info->onenand.base);
out_release_mem_region:
	FUNC10(res->start, size);
out_free_info:
	FUNC4(info);

	return err;
}