#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_9__ dev; } ;
struct map_info {int dummy; } ;
struct ltq_mtd {TYPE_4__* mtd; TYPE_8__* map; TYPE_2__* res; } ;
struct cfi_private {int addr_unlock1; int addr_unlock2; } ;
struct TYPE_16__ {int bankwidth; struct cfi_private* fldrv_priv; int /*<<< orphan*/  map_priv_1; int /*<<< orphan*/  copy_to; int /*<<< orphan*/  copy_from; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  name; int /*<<< orphan*/  virt; int /*<<< orphan*/  size; int /*<<< orphan*/  phys; } ;
struct TYPE_13__ {TYPE_9__* parent; } ;
struct TYPE_15__ {TYPE_1__ dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LTQ_NOR_NORMAL ; 
 int /*<<< orphan*/  LTQ_NOR_PROBING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,TYPE_2__*) ; 
 void* FUNC4 (TYPE_9__*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (char*,TYPE_8__*) ; 
 int /*<<< orphan*/  ltq_copy_from ; 
 int /*<<< orphan*/  ltq_copy_to ; 
 int /*<<< orphan*/  ltq_map_name ; 
 int /*<<< orphan*/  ltq_read16 ; 
 int /*<<< orphan*/  ltq_write16 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ltq_mtd*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC12(struct platform_device *pdev)
{
	struct ltq_mtd *ltq_mtd;
	struct cfi_private *cfi;
	int err;

	ltq_mtd = FUNC4(&pdev->dev, sizeof(struct ltq_mtd), GFP_KERNEL);
	if (!ltq_mtd)
		return -ENOMEM;

	FUNC10(pdev, ltq_mtd);

	ltq_mtd->res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!ltq_mtd->res) {
		FUNC2(&pdev->dev, "failed to get memory resource\n");
		return -ENOENT;
	}

	ltq_mtd->map = FUNC4(&pdev->dev, sizeof(struct map_info),
				    GFP_KERNEL);
	if (!ltq_mtd->map)
		return -ENOMEM;

	ltq_mtd->map->phys = ltq_mtd->res->start;
	ltq_mtd->map->size = FUNC11(ltq_mtd->res);
	ltq_mtd->map->virt = FUNC3(&pdev->dev, ltq_mtd->res);
	if (FUNC0(ltq_mtd->map->virt))
		return FUNC1(ltq_mtd->map->virt);

	ltq_mtd->map->name = ltq_map_name;
	ltq_mtd->map->bankwidth = 2;
	ltq_mtd->map->read = ltq_read16;
	ltq_mtd->map->write = ltq_write16;
	ltq_mtd->map->copy_from = ltq_copy_from;
	ltq_mtd->map->copy_to = ltq_copy_to;

	ltq_mtd->map->map_priv_1 = LTQ_NOR_PROBING;
	ltq_mtd->mtd = FUNC5("cfi_probe", ltq_mtd->map);
	ltq_mtd->map->map_priv_1 = LTQ_NOR_NORMAL;

	if (!ltq_mtd->mtd) {
		FUNC2(&pdev->dev, "probing failed\n");
		return -ENXIO;
	}

	ltq_mtd->mtd->dev.parent = &pdev->dev;
	FUNC8(ltq_mtd->mtd, pdev->dev.of_node);

	cfi = ltq_mtd->map->fldrv_priv;
	cfi->addr_unlock1 ^= 1;
	cfi->addr_unlock2 ^= 1;

	err = FUNC7(ltq_mtd->mtd, NULL, 0);
	if (err) {
		FUNC2(&pdev->dev, "failed to add partitions\n");
		goto err_destroy;
	}

	return 0;

err_destroy:
	FUNC6(ltq_mtd->mtd);
	return err;
}