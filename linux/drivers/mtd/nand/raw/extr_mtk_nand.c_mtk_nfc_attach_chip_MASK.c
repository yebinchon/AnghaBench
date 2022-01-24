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
struct nand_chip {int options; int bbt_options; } ;
struct mtk_nfc_nand_chip {int /*<<< orphan*/  bad_mark; int /*<<< orphan*/  fdm; int /*<<< orphan*/  spare_per_sector; } ;
struct mtk_nfc {int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {struct device* parent; } ;
struct mtd_info {int writesize; int oobsize; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAND_BBT_NO_OOB ; 
 int NAND_BBT_USE_FLASH ; 
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mtd_info*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct mtd_info*) ; 
 struct mtk_nfc* FUNC6 (struct nand_chip*) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 
 struct mtk_nfc_nand_chip* FUNC8 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *chip)
{
	struct mtd_info *mtd = FUNC7(chip);
	struct device *dev = mtd->dev.parent;
	struct mtk_nfc *nfc = FUNC6(chip);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC8(chip);
	int len;
	int ret;

	if (chip->options & NAND_BUSWIDTH_16) {
		FUNC0(dev, "16bits buswidth not supported");
		return -EINVAL;
	}

	/* store bbt magic in page, cause OOB is not protected */
	if (chip->bbt_options & NAND_BBT_USE_FLASH)
		chip->bbt_options |= NAND_BBT_NO_OOB;

	ret = FUNC2(dev, mtd);
	if (ret)
		return ret;

	ret = FUNC5(&mtk_nand->spare_per_sector, mtd);
	if (ret)
		return ret;

	FUNC4(&mtk_nand->fdm, mtd);
	FUNC3(&mtk_nand->bad_mark, mtd);

	len = mtd->writesize + mtd->oobsize;
	nfc->buffer = FUNC1(dev, len, GFP_KERNEL);
	if (!nfc->buffer)
		return  -ENOMEM;

	return 0;
}