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
struct TYPE_2__ {scalar_t__ bytes; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_oob_region {scalar_t__ length; scalar_t__ offset; } ;
struct mtd_info {int dummy; } ;
struct brcmnand_cfg {int spare_area_size; int sector_size_1k; int page_size; } ;
struct brcmnand_host {struct brcmnand_cfg hwcfg; } ;

/* Variables and functions */
 int ERANGE ; 
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 struct brcmnand_host* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, int section,
				      struct mtd_oob_region *oobregion)
{
	struct nand_chip *chip = FUNC0(mtd);
	struct brcmnand_host *host = FUNC1(chip);
	struct brcmnand_cfg *cfg = &host->hwcfg;
	int sas = cfg->spare_area_size << cfg->sector_size_1k;
	int sectors = cfg->page_size / (512 << cfg->sector_size_1k);

	if (section >= sectors)
		return -ERANGE;

	oobregion->offset = ((section + 1) * sas) - chip->ecc.bytes;
	oobregion->length = chip->ecc.bytes;

	return 0;
}