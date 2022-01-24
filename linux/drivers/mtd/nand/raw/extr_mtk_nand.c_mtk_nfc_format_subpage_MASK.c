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
typedef  int u32 ;
struct TYPE_3__ {int size; int steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_4__ {int sec; int /*<<< orphan*/  (* bm_swap ) (struct mtd_info*,int /*<<< orphan*/ ,int) ;} ;
struct mtk_nfc_fdm {int reg_size; } ;
struct mtk_nfc_nand_chip {TYPE_2__ bad_mark; struct mtk_nfc_fdm fdm; } ;
struct mtk_nfc {int /*<<< orphan*/  buffer; } ;
struct mtd_info {scalar_t__ oobsize; scalar_t__ writesize; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct nand_chip* FUNC4 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*,int) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,int) ; 
 struct mtk_nfc* FUNC8 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 struct mtk_nfc_nand_chip* FUNC11 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC12(struct mtd_info *mtd, u32 offset,
				  u32 len, const u8 *buf)
{
	struct nand_chip *chip = FUNC4(mtd);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC11(chip);
	struct mtk_nfc *nfc = FUNC8(chip);
	struct mtk_nfc_fdm *fdm = &mtk_nand->fdm;
	u32 start, end;
	int i, ret;

	start = offset / chip->ecc.size;
	end = FUNC0(offset + len, chip->ecc.size);

	FUNC3(nfc->buffer, 0xff, mtd->writesize + mtd->oobsize);
	for (i = 0; i < chip->ecc.steps; i++) {
		FUNC2(FUNC5(chip, i), FUNC1(chip, buf, i),
		       chip->ecc.size);

		if (start > i || i >= end)
			continue;

		if (i == mtk_nand->bad_mark.sec)
			mtk_nand->bad_mark.bm_swap(mtd, nfc->buffer, 1);

		FUNC2(FUNC7(chip, i), FUNC9(chip, i), fdm->reg_size);

		/* program the CRC back to the OOB */
		ret = FUNC6(chip, FUNC5(chip, i));
		if (ret < 0)
			return ret;
	}

	return 0;
}