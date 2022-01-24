#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct mtd_info {TYPE_1__ dev; int /*<<< orphan*/  owner; } ;
struct map_info {int /*<<< orphan*/  copy_to; int /*<<< orphan*/  copy_from; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  virt; int /*<<< orphan*/  bankwidth; } ;
struct cobalt {TYPE_2__* pci_dev; struct mtd_info* mtd; int /*<<< orphan*/  bar1; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct map_info cobalt_flash_map ; 
 struct mtd_info* FUNC2 (char*,struct map_info*) ; 
 int /*<<< orphan*/  flash_copy_from ; 
 int /*<<< orphan*/  flash_copy_to ; 
 int /*<<< orphan*/  flash_read16 ; 
 int /*<<< orphan*/  flash_write16 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct cobalt *cobalt)
{
	struct map_info *map = &cobalt_flash_map;
	struct mtd_info *mtd;

	FUNC0(!FUNC3(map->bankwidth));
	map->virt = cobalt->bar1;
	map->read = flash_read16;
	map->write = flash_write16;
	map->copy_from = flash_copy_from;
	map->copy_to = flash_copy_to;

	mtd = FUNC2("cfi_probe", map);
	cobalt->mtd = mtd;
	if (!mtd) {
		FUNC1("Probe CFI flash failed!\n");
		return -1;
	}

	mtd->owner = THIS_MODULE;
	mtd->dev.parent = &cobalt->pci_dev->dev;
	FUNC4(mtd, NULL, 0);
	return 0;
}