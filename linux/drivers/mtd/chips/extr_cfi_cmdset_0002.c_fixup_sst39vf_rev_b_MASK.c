#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {int addr_unlock1; int addr_unlock2; int /*<<< orphan*/  sector_erase_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd)
{
	struct map_info *map = mtd->priv;
	struct cfi_private *cfi = map->fldrv_priv;

	FUNC1(mtd);

	cfi->addr_unlock1 = 0x555;
	cfi->addr_unlock2 = 0x2AA;

	cfi->sector_erase_cmd = FUNC0(0x50);
}