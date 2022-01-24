#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  size; int /*<<< orphan*/  virt; int /*<<< orphan*/  bankwidth; scalar_t__ phys; } ;
struct platram_info {TYPE_3__* mtd; TYPE_2__ map; struct platdata_mtd_ram* pdata; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; scalar_t__ name; } ;
struct platdata_mtd_ram {char** map_probes; scalar_t__ nr_partitions; int /*<<< orphan*/  partitions; int /*<<< orphan*/  probes; int /*<<< orphan*/  bankwidth; int /*<<< orphan*/ * mapname; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATRAM_RW ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct platdata_mtd_ram* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC7 (char const* const,TYPE_2__*) ; 
 struct platram_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct platram_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platram_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct platdata_mtd_ram	*pdata;
	struct platram_info *info;
	struct resource *res;
	int err = 0;

	FUNC2(&pdev->dev, "probe entered\n");

	if (FUNC4(&pdev->dev) == NULL) {
		FUNC3(&pdev->dev, "no platform data supplied\n");
		err = -ENOENT;
		goto exit_error;
	}

	pdata = FUNC4(&pdev->dev);

	info = FUNC8(sizeof(*info), GFP_KERNEL);
	if (info == NULL) {
		err = -ENOMEM;
		goto exit_error;
	}

	FUNC12(pdev, info);

	info->dev = &pdev->dev;
	info->pdata = pdata;

	/* get the resource for the memory mapping */
	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	info->map.virt = FUNC6(&pdev->dev, res);
	if (FUNC0(info->map.virt)) {
		err = FUNC1(info->map.virt);
		FUNC3(&pdev->dev, "failed to ioremap() region\n");
		goto exit_free;
	}

	FUNC2(&pdev->dev, "got platform resource %p (0x%llx)\n", res,
		(unsigned long long)res->start);

	/* setup map parameters */

	info->map.phys = res->start;
	info->map.size = FUNC15(res);
	info->map.name = pdata->mapname != NULL ?
			(char *)pdata->mapname : (char *)pdev->name;
	info->map.bankwidth = pdata->bankwidth;

	FUNC2(&pdev->dev, "virt %p, %lu bytes\n", info->map.virt, info->map.size);

	FUNC16(&info->map);

	FUNC2(&pdev->dev, "initialised map, probing for mtd\n");

	/* probe for the right mtd map driver
	 * supplied by the platform_data struct */

	if (pdata->map_probes) {
		const char * const *map_probes = pdata->map_probes;

		for ( ; !info->mtd && *map_probes; map_probes++)
			info->mtd = FUNC7(*map_probes , &info->map);
	}
	/* fallback to map_ram */
	else
		info->mtd = FUNC7("map_ram", &info->map);

	if (info->mtd == NULL) {
		FUNC3(&pdev->dev, "failed to probe for map_ram\n");
		err = -ENOMEM;
		goto exit_free;
	}

	info->mtd->dev.parent = &pdev->dev;

	FUNC14(info, PLATRAM_RW);

	/* check to see if there are any available partitions, or whether
	 * to add this device whole */

	err = FUNC9(info->mtd, pdata->probes, NULL,
					pdata->partitions,
					pdata->nr_partitions);
	if (!err)
		FUNC5(&pdev->dev, "registered mtd device\n");

	if (pdata->nr_partitions) {
		/* add the whole device. */
		err = FUNC10(info->mtd, NULL, 0);
		if (err) {
			FUNC3(&pdev->dev,
				"failed to register the entire device\n");
		}
	}

	return err;

 exit_free:
	FUNC13(pdev);
 exit_error:
	return err;
}