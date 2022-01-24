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
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct mtd_info {int oobsize; int /*<<< orphan*/  writesize; } ;
struct gpmi_nand_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct gpmi_nand_data* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip, int page)
{
	struct mtd_info *mtd = FUNC4(chip);
	struct gpmi_nand_data *this = FUNC2(chip);
	int ret;

	/* clear the OOB buffer */
	FUNC1(chip->oob_poi, ~0, mtd->oobsize);

	/* Read out the conventional OOB. */
	ret = FUNC3(chip, page, mtd->writesize, chip->oob_poi,
				mtd->oobsize);
	if (ret)
		return ret;

	/*
	 * Now, we want to make sure the block mark is correct. In the
	 * non-transcribing case (!GPMI_IS_MX23()), we already have it.
	 * Otherwise, we need to explicitly read it.
	 */
	if (FUNC0(this)) {
		/* Read the block mark into the first byte of the OOB buffer. */
		ret = FUNC3(chip, page, 0, chip->oob_poi, 1);
		if (ret)
			return ret;
	}

	return 0;
}