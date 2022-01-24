#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct davinci_nand_pdata {int ecc_bits; } ;
struct TYPE_4__ {int mode; int bytes; int size; int strength; void* algo; int /*<<< orphan*/  hwctl; int /*<<< orphan*/  correct; int /*<<< orphan*/  calculate; int /*<<< orphan*/  options; } ;
struct TYPE_5__ {TYPE_1__ ecc; } ;
struct davinci_nand_info {TYPE_2__ chip; TYPE_3__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct davinci_nand_pdata*) ; 
 void* NAND_ECC_BCH ; 
 int /*<<< orphan*/  NAND_ECC_GENERIC_ERASED_CHECK ; 
 void* NAND_ECC_HAMMING ; 
#define  NAND_ECC_HW 130 
 int NAND_ECC_HW_OOB_FIRST ; 
#define  NAND_ECC_NONE 129 
#define  NAND_ECC_SOFT 128 
 int FUNC1 (struct davinci_nand_pdata*) ; 
 int /*<<< orphan*/  davinci_nand_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int ecc4_busy ; 
 int /*<<< orphan*/  hwecc4_small_ooblayout_ops ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nand_davinci_calculate_1bit ; 
 int /*<<< orphan*/  nand_davinci_calculate_4bit ; 
 int /*<<< orphan*/  nand_davinci_correct_1bit ; 
 int /*<<< orphan*/  nand_davinci_correct_4bit ; 
 struct davinci_nand_pdata* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  nand_davinci_hwctl_1bit ; 
 int /*<<< orphan*/  nand_davinci_hwctl_4bit ; 
 int /*<<< orphan*/  nand_ooblayout_lp_ops ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct davinci_nand_info* FUNC8 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC5(chip);
	struct davinci_nand_info *info = FUNC8(mtd);
	struct davinci_nand_pdata *pdata = FUNC4(info->pdev);
	int ret = 0;

	if (FUNC0(pdata))
		return FUNC1(pdata);

	switch (info->chip.ecc.mode) {
	case NAND_ECC_NONE:
		pdata->ecc_bits = 0;
		break;
	case NAND_ECC_SOFT:
		pdata->ecc_bits = 0;
		/*
		 * This driver expects Hamming based ECC when ecc_mode is set
		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
		 * avoid adding an extra ->ecc_algo field to
		 * davinci_nand_pdata.
		 */
		info->chip.ecc.algo = NAND_ECC_HAMMING;
		break;
	case NAND_ECC_HW:
		if (pdata->ecc_bits == 4) {
			/*
			 * No sanity checks:  CPUs must support this,
			 * and the chips may not use NAND_BUSWIDTH_16.
			 */

			/* No sharing 4-bit hardware between chipselects yet */
			FUNC6(&davinci_nand_lock);
			if (ecc4_busy)
				ret = -EBUSY;
			else
				ecc4_busy = true;
			FUNC7(&davinci_nand_lock);

			if (ret == -EBUSY)
				return ret;

			info->chip.ecc.calculate = nand_davinci_calculate_4bit;
			info->chip.ecc.correct = nand_davinci_correct_4bit;
			info->chip.ecc.hwctl = nand_davinci_hwctl_4bit;
			info->chip.ecc.bytes = 10;
			info->chip.ecc.options = NAND_ECC_GENERIC_ERASED_CHECK;
			info->chip.ecc.algo = NAND_ECC_BCH;
		} else {
			/* 1bit ecc hamming */
			info->chip.ecc.calculate = nand_davinci_calculate_1bit;
			info->chip.ecc.correct = nand_davinci_correct_1bit;
			info->chip.ecc.hwctl = nand_davinci_hwctl_1bit;
			info->chip.ecc.bytes = 3;
			info->chip.ecc.algo = NAND_ECC_HAMMING;
		}
		info->chip.ecc.size = 512;
		info->chip.ecc.strength = pdata->ecc_bits;
		break;
	default:
		return -EINVAL;
	}

	/*
	 * Update ECC layout if needed ... for 1-bit HW ECC, the default
	 * is OK, but it allocates 6 bytes when only 3 are needed (for
	 * each 512 bytes).  For the 4-bit HW ECC, that default is not
	 * usable:  10 bytes are needed, not 6.
	 */
	if (pdata->ecc_bits == 4) {
		int chunks = mtd->writesize / 512;

		if (!chunks || mtd->oobsize < 16) {
			FUNC2(&info->pdev->dev, "too small\n");
			return -EINVAL;
		}

		/* For small page chips, preserve the manufacturer's
		 * badblock marking data ... and make sure a flash BBT
		 * table marker fits in the free bytes.
		 */
		if (chunks == 1) {
			FUNC3(mtd, &hwecc4_small_ooblayout_ops);
		} else if (chunks == 4 || chunks == 8) {
			FUNC3(mtd, &nand_ooblayout_lp_ops);
			info->chip.ecc.mode = NAND_ECC_HW_OOB_FIRST;
		} else {
			return -EIO;
		}
	}

	return ret;
}