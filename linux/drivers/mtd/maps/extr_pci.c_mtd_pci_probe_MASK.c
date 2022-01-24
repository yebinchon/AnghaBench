#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct mtd_pci_info {int (* init ) (struct pci_dev*,struct map_pci_info*) ;int /*<<< orphan*/  map_name; int /*<<< orphan*/  translate; int /*<<< orphan*/  (* exit ) (struct pci_dev*,struct map_pci_info*) ;} ;
struct mtd_info {int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct map_pci_info {int /*<<< orphan*/  (* exit ) (struct pci_dev*,struct map_pci_info*) ;TYPE_1__ map; int /*<<< orphan*/  translate; struct pci_dev* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct mtd_info* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct map_pci_info*) ; 
 struct map_pci_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ mtd_pci_map ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct mtd_info*) ; 
 int FUNC9 (struct pci_dev*,struct map_pci_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct map_pci_info*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct mtd_pci_info *info = (struct mtd_pci_info *)id->driver_data;
	struct map_pci_info *map = NULL;
	struct mtd_info *mtd = NULL;
	int err;

	err = FUNC4(dev);
	if (err)
		goto out;

	err = FUNC7(dev, "pci mtd");
	if (err)
		goto out;

	map = FUNC2(sizeof(*map), GFP_KERNEL);
	err = -ENOMEM;
	if (!map)
		goto release;

	map->map       = mtd_pci_map;
	map->map.name  = FUNC5(dev);
	map->dev       = dev;
	map->exit      = info->exit;
	map->translate = info->translate;

	err = info->init(dev, map);
	if (err)
		goto release;

	mtd = FUNC0(info->map_name, &map->map);
	err = -ENODEV;
	if (!mtd)
		goto release;

	mtd->owner = THIS_MODULE;
	FUNC3(mtd, NULL, 0);

	FUNC8(dev, mtd);

	return 0;

release:
	if (map) {
		map->exit(dev, map);
		FUNC1(map);
	}

	FUNC6(dev);
out:
	return err;
}