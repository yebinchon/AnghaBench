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
struct stm32_fmc2_nfc {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ mode; int size; } ;
struct nand_chip {int bbt_options; int options; TYPE_1__ ecc; int /*<<< orphan*/  controller; } ;
struct mtd_info {int writesize; scalar_t__ oobsize; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FMC2_BBM_LEN ; 
 int FMC2_MAX_SG ; 
 int NAND_BBT_NO_OOB ; 
 int NAND_BBT_USE_FLASH ; 
 int NAND_BUSWIDTH_16 ; 
 scalar_t__ NAND_ECC_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  stm32_fmc2_ecc_caps ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  stm32_fmc2_nand_ooblayout_ops ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_fmc2_nfc*,int) ; 
 struct stm32_fmc2_nfc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip)
{
	struct stm32_fmc2_nfc *fmc2 = FUNC6(chip->controller);
	struct mtd_info *mtd = FUNC3(chip);
	int ret;

	/*
	 * Only NAND_ECC_HW mode is actually supported
	 * Hamming => ecc.strength = 1
	 * BCH4 => ecc.strength = 4
	 * BCH8 => ecc.strength = 8
	 * ECC sector size = 512
	 */
	if (chip->ecc.mode != NAND_ECC_HW) {
		FUNC0(fmc2->dev, "nand_ecc_mode is not well defined in the DT\n");
		return -EINVAL;
	}

	ret = FUNC2(chip, &stm32_fmc2_ecc_caps,
				   mtd->oobsize - FMC2_BBM_LEN);
	if (ret) {
		FUNC0(fmc2->dev, "no valid ECC settings set\n");
		return ret;
	}

	if (mtd->writesize / chip->ecc.size > FMC2_MAX_SG) {
		FUNC0(fmc2->dev, "nand page size is not supported\n");
		return -EINVAL;
	}

	if (chip->bbt_options & NAND_BBT_USE_FLASH)
		chip->bbt_options |= NAND_BBT_NO_OOB;

	/* NAND callbacks setup */
	FUNC4(chip);

	/* Define ECC layout */
	FUNC1(mtd, &stm32_fmc2_nand_ooblayout_ops);

	/* Configure bus width to 16-bit */
	if (chip->options & NAND_BUSWIDTH_16)
		FUNC5(fmc2, true);

	return 0;
}