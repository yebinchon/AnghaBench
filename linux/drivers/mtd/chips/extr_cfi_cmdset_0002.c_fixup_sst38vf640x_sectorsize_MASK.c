#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtd_info {int /*<<< orphan*/  name; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {TYPE_1__* cfiq; } ;
struct TYPE_2__ {int* EraseRegionInfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd)
{
	struct map_info *map = mtd->priv;
	struct cfi_private *cfi = map->fldrv_priv;

	FUNC0(mtd);

	/*
	 * CFI reports 1024 sectors (0x03ff+1) of 64KBytes (0x0100*256) where
	 * it should report a size of 8KBytes (0x0020*256).
	 */
	cfi->cfiq->EraseRegionInfo[0] = 0x002003ff;
	FUNC1("%s: Bad 38VF640x CFI data; adjusting sector size from 64 to 8KiB\n",
		mtd->name);
}