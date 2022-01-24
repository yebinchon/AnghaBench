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
struct vf610_nfc {int /*<<< orphan*/  dev; int /*<<< orphan*/  ecc_mode; } ;
struct TYPE_2__ {scalar_t__ mode; int size; int strength; int bytes; int /*<<< orphan*/  write_oob; int /*<<< orphan*/  read_oob; int /*<<< orphan*/  write_page_raw; int /*<<< orphan*/  read_page_raw; int /*<<< orphan*/  write_page; int /*<<< orphan*/  read_page; } ;
struct nand_chip {int bbt_options; TYPE_1__ ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECC_45_BYTE ; 
 int /*<<< orphan*/  ECC_60_BYTE ; 
 int ENXIO ; 
 int NAND_BBT_NO_OOB ; 
 int NAND_BBT_USE_FLASH ; 
 scalar_t__ NAND_ECC_HW ; 
 int OOB_MAX ; 
 int PAGE_2K ; 
 struct vf610_nfc* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nand_ooblayout_lp_ops ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct vf610_nfc*) ; 
 int /*<<< orphan*/  vf610_nfc_read_oob ; 
 int /*<<< orphan*/  vf610_nfc_read_page ; 
 int /*<<< orphan*/  vf610_nfc_read_page_raw ; 
 int /*<<< orphan*/  vf610_nfc_write_oob ; 
 int /*<<< orphan*/  vf610_nfc_write_page ; 
 int /*<<< orphan*/  vf610_nfc_write_page_raw ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct vf610_nfc *nfc = FUNC0(chip);

	FUNC4(nfc);

	/* Bad block options. */
	if (chip->bbt_options & NAND_BBT_USE_FLASH)
		chip->bbt_options |= NAND_BBT_NO_OOB;

	/* Single buffer only, max 256 OOB minus ECC status */
	if (mtd->writesize + mtd->oobsize > PAGE_2K + OOB_MAX - 8) {
		FUNC1(nfc->dev, "Unsupported flash page size\n");
		return -ENXIO;
	}

	if (chip->ecc.mode != NAND_ECC_HW)
		return 0;

	if (mtd->writesize != PAGE_2K && mtd->oobsize < 64) {
		FUNC1(nfc->dev, "Unsupported flash with hwecc\n");
		return -ENXIO;
	}

	if (chip->ecc.size != mtd->writesize) {
		FUNC1(nfc->dev, "Step size needs to be page size\n");
		return -ENXIO;
	}

	/* Only 64 byte ECC layouts known */
	if (mtd->oobsize > 64)
		mtd->oobsize = 64;

	/* Use default large page ECC layout defined in NAND core */
	FUNC2(mtd, &nand_ooblayout_lp_ops);
	if (chip->ecc.strength == 32) {
		nfc->ecc_mode = ECC_60_BYTE;
		chip->ecc.bytes = 60;
	} else if (chip->ecc.strength == 24) {
		nfc->ecc_mode = ECC_45_BYTE;
		chip->ecc.bytes = 45;
	} else {
		FUNC1(nfc->dev, "Unsupported ECC strength\n");
		return -ENXIO;
	}

	chip->ecc.read_page = vf610_nfc_read_page;
	chip->ecc.write_page = vf610_nfc_write_page;
	chip->ecc.read_page_raw = vf610_nfc_read_page_raw;
	chip->ecc.write_page_raw = vf610_nfc_write_page_raw;
	chip->ecc.read_oob = vf610_nfc_read_oob;
	chip->ecc.write_oob = vf610_nfc_write_oob;

	chip->ecc.size = PAGE_2K;

	return 0;
}