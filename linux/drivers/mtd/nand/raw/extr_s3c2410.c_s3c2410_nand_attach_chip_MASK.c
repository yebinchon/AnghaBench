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
struct s3c2410_nand_info {int /*<<< orphan*/  device; int /*<<< orphan*/  cpu_type; } ;
struct TYPE_2__ {int mode; int strength; int size; int bytes; void* calculate; int /*<<< orphan*/  hwctl; int /*<<< orphan*/  correct; int /*<<< orphan*/  algo; } ;
struct nand_chip {int page_shift; int bbt_options; int /*<<< orphan*/  options; TYPE_1__ ecc; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int NAND_BBT_USE_FLASH ; 
 int /*<<< orphan*/  NAND_ECC_HAMMING ; 
#define  NAND_ECC_HW 133 
#define  NAND_ECC_NONE 132 
#define  NAND_ECC_SOFT 131 
 int /*<<< orphan*/  NAND_SKIP_BBTSCAN ; 
#define  TYPE_S3C2410 130 
#define  TYPE_S3C2412 129 
#define  TYPE_S3C2440 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 void* s3c2410_nand_calculate_ecc ; 
 int /*<<< orphan*/  s3c2410_nand_correct_data ; 
 int /*<<< orphan*/  s3c2410_nand_enable_hwecc ; 
 struct s3c2410_nand_info* FUNC5 (struct mtd_info*) ; 
 int /*<<< orphan*/  s3c2410_ooblayout_ops ; 
 void* s3c2412_nand_calculate_ecc ; 
 int /*<<< orphan*/  s3c2412_nand_enable_hwecc ; 
 void* s3c2440_nand_calculate_ecc ; 
 int /*<<< orphan*/  s3c2440_nand_enable_hwecc ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC4(chip);
	struct s3c2410_nand_info *info = FUNC5(mtd);

	switch (chip->ecc.mode) {

	case NAND_ECC_NONE:
		FUNC2(info->device, "ECC disabled\n");
		break;

	case NAND_ECC_SOFT:
		/*
		 * This driver expects Hamming based ECC when ecc_mode is set
		 * to NAND_ECC_SOFT. Force ecc.algo to NAND_ECC_HAMMING to
		 * avoid adding an extra ecc_algo field to
		 * s3c2410_platform_nand.
		 */
		chip->ecc.algo = NAND_ECC_HAMMING;
		FUNC2(info->device, "soft ECC\n");
		break;

	case NAND_ECC_HW:
		chip->ecc.calculate = s3c2410_nand_calculate_ecc;
		chip->ecc.correct   = s3c2410_nand_correct_data;
		chip->ecc.strength  = 1;

		switch (info->cpu_type) {
		case TYPE_S3C2410:
			chip->ecc.hwctl	    = s3c2410_nand_enable_hwecc;
			chip->ecc.calculate = s3c2410_nand_calculate_ecc;
			break;

		case TYPE_S3C2412:
			chip->ecc.hwctl     = s3c2412_nand_enable_hwecc;
			chip->ecc.calculate = s3c2412_nand_calculate_ecc;
			break;

		case TYPE_S3C2440:
			chip->ecc.hwctl     = s3c2440_nand_enable_hwecc;
			chip->ecc.calculate = s3c2440_nand_calculate_ecc;
			break;
		}

		FUNC0(info->device, "chip %p => page shift %d\n",
			chip, chip->page_shift);

		/* change the behaviour depending on whether we are using
		 * the large or small page nand device */
		if (chip->page_shift > 10) {
			chip->ecc.size	    = 256;
			chip->ecc.bytes	    = 3;
		} else {
			chip->ecc.size	    = 512;
			chip->ecc.bytes	    = 3;
			FUNC3(FUNC4(chip),
					  &s3c2410_ooblayout_ops);
		}

		FUNC2(info->device, "hardware ECC\n");
		break;

	default:
		FUNC1(info->device, "invalid ECC mode!\n");
		return -EINVAL;
	}

	if (chip->bbt_options & NAND_BBT_USE_FLASH)
		chip->options |= NAND_SKIP_BBTSCAN;

	return 0;
}