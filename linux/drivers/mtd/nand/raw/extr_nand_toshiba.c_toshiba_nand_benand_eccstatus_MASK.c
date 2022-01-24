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
typedef  int u8 ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {unsigned int corrected; int /*<<< orphan*/  failed; } ;
struct mtd_info {unsigned int bitflip_threshold; TYPE_1__ ecc_stats; } ;

/* Variables and functions */
 int NAND_STATUS_FAIL ; 
 int TOSHIBA_NAND_STATUS_REWRITE_RECOMMENDED ; 
 int FUNC0 (struct nand_chip*,int*) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC1(chip);
	int ret;
	unsigned int max_bitflips = 0;
	u8 status;

	/* Check Status */
	ret = FUNC0(chip, &status);
	if (ret)
		return ret;

	if (status & NAND_STATUS_FAIL) {
		/* uncorrected */
		mtd->ecc_stats.failed++;
	} else if (status & TOSHIBA_NAND_STATUS_REWRITE_RECOMMENDED) {
		/* corrected */
		max_bitflips = mtd->bitflip_threshold;
		mtd->ecc_stats.corrected += max_bitflips;
	}

	return max_bitflips;
}