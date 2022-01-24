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
struct nand_ecc_caps {int dummy; } ;
struct TYPE_2__ {int options; scalar_t__ strength; scalar_t__ size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int NAND_ECC_MAXIMIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct nand_chip*,struct nand_ecc_caps const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,struct nand_ecc_caps const*,int) ; 
 int FUNC3 (struct nand_chip*,struct nand_ecc_caps const*,int) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

int FUNC5(struct nand_chip *chip,
			 const struct nand_ecc_caps *caps, int oobavail)
{
	struct mtd_info *mtd = FUNC4(chip);

	if (FUNC0(oobavail < 0 || oobavail > mtd->oobsize))
		return -EINVAL;

	if (chip->ecc.size && chip->ecc.strength)
		return FUNC1(chip, caps, oobavail);

	if (chip->ecc.options & NAND_ECC_MAXIMIZE)
		return FUNC3(chip, caps, oobavail);

	if (!FUNC2(chip, caps, oobavail))
		return 0;

	return FUNC3(chip, caps, oobavail);
}