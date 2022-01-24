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
struct nand_ecc_ctrl {int /*<<< orphan*/  total; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_oob_region {int /*<<< orphan*/  offset; int /*<<< orphan*/  length; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FMC2_BBM_LEN ; 
 struct nand_chip* FUNC0 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd, int section,
					 struct mtd_oob_region *oobregion)
{
	struct nand_chip *chip = FUNC0(mtd);
	struct nand_ecc_ctrl *ecc = &chip->ecc;

	if (section)
		return -ERANGE;

	oobregion->length = ecc->total;
	oobregion->offset = FMC2_BBM_LEN;

	return 0;
}