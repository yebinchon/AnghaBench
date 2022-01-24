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
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_ECC_READ ; 
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip, u8 *buf,
				    bool oob_required, int page, bool raw)
{
	struct mtd_info *mtd = FUNC5(chip);
	int ret;

	FUNC4(chip, page, 0, NULL, 0);

	ret = FUNC2(chip, NAND_ECC_READ, raw);
	if (ret)
		return ret;

	FUNC3(chip, buf, mtd->writesize);
	FUNC3(chip, chip->oob_poi, mtd->oobsize);

	ret = FUNC0(chip, buf, raw);

	FUNC1(chip, raw);

	return ret;
}