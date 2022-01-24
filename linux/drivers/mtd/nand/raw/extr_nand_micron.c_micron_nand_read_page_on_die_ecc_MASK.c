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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int strength; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/ * oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nand_chip*) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 

__attribute__((used)) static int
FUNC8(struct nand_chip *chip, uint8_t *buf,
				 int oob_required, int page)
{
	struct mtd_info *mtd = FUNC7(chip);
	u8 status;
	int ret, max_bitflips = 0;

	ret = FUNC0(chip, true);
	if (ret)
		return ret;

	ret = FUNC5(chip, page, 0, NULL, 0);
	if (ret)
		goto out;

	ret = FUNC6(chip, &status);
	if (ret)
		goto out;

	ret = FUNC3(chip);
	if (ret)
		goto out;

	ret = FUNC4(chip, buf, mtd->writesize, false);
	if (!ret && oob_required)
		ret = FUNC4(chip, chip->oob_poi, mtd->oobsize,
					false);

	if (chip->ecc.strength == 4)
		max_bitflips = FUNC1(chip, status,
							       buf, page,
							       oob_required);
	else
		max_bitflips = FUNC2(chip, status);

out:
	FUNC0(chip, false);

	return ret ? ret : max_bitflips;
}