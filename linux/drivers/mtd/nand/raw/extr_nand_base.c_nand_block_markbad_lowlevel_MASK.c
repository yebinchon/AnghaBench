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
struct nand_chip {int bbt_options; unsigned long long phys_erase_shift; scalar_t__ bbt; } ;
struct TYPE_2__ {int /*<<< orphan*/  badblocks; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
struct erase_info {unsigned long long len; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  einfo ;

/* Variables and functions */
 int NAND_BBT_NO_OOB_BBM ; 
 int /*<<< orphan*/  FUNC0 (struct erase_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,struct erase_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, loff_t ofs)
{
	struct mtd_info *mtd = FUNC6(chip);
	int res, ret = 0;

	if (!(chip->bbt_options & NAND_BBT_NO_OOB_BBM)) {
		struct erase_info einfo;

		/* Attempt erase before marking OOB */
		FUNC0(&einfo, 0, sizeof(einfo));
		einfo.addr = ofs;
		einfo.len = 1ULL << chip->phys_erase_shift;
		FUNC1(chip, &einfo, 0);

		/* Write bad block marker to OOB */
		ret = FUNC2(chip);
		if (ret)
			return ret;

		ret = FUNC3(chip, ofs);
		FUNC5(chip);
	}

	/* Mark block bad in BBT */
	if (chip->bbt) {
		res = FUNC4(chip, ofs);
		if (!ret)
			ret = res;
	}

	if (!ret)
		mtd->ecc_stats.badblocks++;

	return ret;
}