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
struct nand_chip {int /*<<< orphan*/  const* oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;
struct atmel_nand {int /*<<< orphan*/  pmecc; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_ECC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nand_chip*) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 
 struct atmel_nand* FUNC8 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip, const u8 *buf,
				     bool oob_required, int page, bool raw)
{
	struct mtd_info *mtd = FUNC7(chip);
	struct atmel_nand *nand = FUNC8(chip);
	int ret;

	FUNC5(chip, page, 0, NULL, 0);

	ret = FUNC1(chip, NAND_ECC_WRITE, raw);
	if (ret)
		return ret;

	FUNC3(chip, buf, mtd->writesize);

	ret = FUNC2(chip, raw);
	if (ret) {
		FUNC4(nand->pmecc);
		return ret;
	}

	FUNC0(chip, raw);

	FUNC3(chip, chip->oob_poi, mtd->oobsize);

	return FUNC6(chip);
}