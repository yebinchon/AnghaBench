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
struct nand_chip {int chip_shift; } ;
struct mtd_info {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *mtd, loff_t offs)
{
	struct nand_chip *chip = FUNC0(mtd);
	int chipnr = (int)(offs >> chip->chip_shift);
	int ret;

	/* Select the NAND device */
	ret = FUNC3(chip);
	if (ret)
		return ret;

	FUNC5(chip, chipnr);

	ret = FUNC1(chip, offs, 0);

	FUNC2(chip);
	FUNC4(chip);

	return ret;
}