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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct stm32_fmc2_nfc {int dummy; } ;
struct TYPE_2__ {int (* correct ) (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  total; int /*<<< orphan*/ * code_buf; int /*<<< orphan*/ * calc_buf; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  oob_poi; int /*<<< orphan*/  cur_cs; int /*<<< orphan*/  controller; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct stm32_fmc2_nfc* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct nand_chip *chip, u8 *buf,
					  int oob_required, int page)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct stm32_fmc2_nfc *fmc2 = FUNC9(chip->controller);
	u8 *ecc_calc = chip->ecc.calc_buf;
	u8 *ecc_code = chip->ecc.code_buf;
	u16 sta_map;
	int ret;

	/* Select the target */
	ret = FUNC6(chip, chip->cur_cs);
	if (ret)
		return ret;

	/* Configure the sequencer */
	FUNC5(chip, page, 0, false);

	/* Read the page */
	ret = FUNC7(chip, buf, 0, false);
	if (ret)
		return ret;

	sta_map = FUNC4(fmc2);

	/* Check if errors happen */
	if (FUNC0(!sta_map)) {
		if (oob_required)
			return FUNC2(chip, mtd->writesize,
							  chip->oob_poi,
							  mtd->oobsize, false);

		return 0;
	}

	/* Read oob */
	ret = FUNC2(chip, mtd->writesize,
					 chip->oob_poi, mtd->oobsize, false);
	if (ret)
		return ret;

	ret = FUNC1(mtd, ecc_code, chip->oob_poi, 0,
					 chip->ecc.total);
	if (ret)
		return ret;

	/* Correct data */
	return chip->ecc.correct(chip, buf, ecc_code, ecc_calc);
}