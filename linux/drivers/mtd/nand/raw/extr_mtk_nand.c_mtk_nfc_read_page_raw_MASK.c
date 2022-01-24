#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int steps; int /*<<< orphan*/  size; } ;
struct nand_chip {TYPE_2__ ecc; } ;
struct TYPE_3__ {int sec; int /*<<< orphan*/  (* bm_swap ) (struct mtd_info*,int /*<<< orphan*/ ,int) ;} ;
struct mtk_nfc_fdm {int /*<<< orphan*/  reg_size; } ;
struct mtk_nfc_nand_chip {TYPE_1__ bad_mark; struct mtk_nfc_fdm fdm; } ;
struct mtk_nfc {int /*<<< orphan*/  buffer; } ;
struct mtd_info {scalar_t__ writesize; scalar_t__ oobsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int) ; 
 int FUNC4 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int) ; 
 struct mtk_nfc* FUNC6 (struct nand_chip*) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 struct mtk_nfc_nand_chip* FUNC10 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC11(struct nand_chip *chip, u8 *buf, int oob_on,
				 int page)
{
	struct mtd_info *mtd = FUNC7(chip);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC10(chip);
	struct mtk_nfc *nfc = FUNC6(chip);
	struct mtk_nfc_fdm *fdm = &mtk_nand->fdm;
	int i, ret;

	FUNC2(nfc->buffer, 0xff, mtd->writesize + mtd->oobsize);
	ret = FUNC4(mtd, chip, 0, mtd->writesize, nfc->buffer,
				   page, 1);
	if (ret < 0)
		return ret;

	for (i = 0; i < chip->ecc.steps; i++) {
		FUNC1(FUNC8(chip, i), FUNC5(chip, i), fdm->reg_size);

		if (i == mtk_nand->bad_mark.sec)
			mtk_nand->bad_mark.bm_swap(mtd, nfc->buffer, 1);

		if (buf)
			FUNC1(FUNC0(chip, buf, i), FUNC3(chip, i),
			       chip->ecc.size);
	}

	return ret;
}