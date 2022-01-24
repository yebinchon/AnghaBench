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
struct nand_chip {int dummy; } ;
struct mtd_oob_region {int offset; int length; } ;
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

	oobregion->offset = (section * sas) + 6;
	oobregion->length = 3;

	return 0;
}