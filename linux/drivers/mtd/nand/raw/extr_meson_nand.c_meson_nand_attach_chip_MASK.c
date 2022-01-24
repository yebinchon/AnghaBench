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
struct TYPE_4__ {int /*<<< orphan*/  read_oob; int /*<<< orphan*/  read_oob_raw; int /*<<< orphan*/  read_page; int /*<<< orphan*/  read_page_raw; void* write_oob; void* write_oob_raw; int /*<<< orphan*/  write_page; int /*<<< orphan*/  write_page_raw; int /*<<< orphan*/  mode; } ;
struct nand_chip {int bbt_options; int options; TYPE_2__ ecc; } ;
struct mtd_info {int writesize; scalar_t__ oobsize; scalar_t__ name; } ;
struct meson_nfc_nand_chip {int /*<<< orphan*/ * sels; } ;
struct meson_nfc {int /*<<< orphan*/  dev; TYPE_1__* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  ecc_caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAND_BBT_NO_OOB ; 
 int NAND_BBT_USE_FLASH ; 
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  NAND_ECC_HW ; 
 int NAND_NO_SUBPAGE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nand_chip*) ; 
 int FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  meson_nfc_read_oob ; 
 int /*<<< orphan*/  meson_nfc_read_oob_raw ; 
 int /*<<< orphan*/  meson_nfc_read_page_hwecc ; 
 int /*<<< orphan*/  meson_nfc_read_page_raw ; 
 int /*<<< orphan*/  meson_nfc_write_page_hwecc ; 
 int /*<<< orphan*/  meson_nfc_write_page_raw ; 
 int /*<<< orphan*/  meson_ooblayout_ops ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct meson_nfc* FUNC7 (struct nand_chip*) ; 
 struct mtd_info* FUNC8 (struct nand_chip*) ; 
 void* nand_write_oob_std ; 
 struct meson_nfc_nand_chip* FUNC9 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC10(struct nand_chip *nand)
{
	struct meson_nfc *nfc = FUNC7(nand);
	struct meson_nfc_nand_chip *meson_chip = FUNC9(nand);
	struct mtd_info *mtd = FUNC8(nand);
	int nsectors = mtd->writesize / 1024;
	int ret;

	if (!mtd->name) {
		mtd->name = FUNC2(nfc->dev, GFP_KERNEL,
					   "%s:nand%d",
					   FUNC1(nfc->dev),
					   meson_chip->sels[0]);
		if (!mtd->name)
			return -ENOMEM;
	}

	if (nand->bbt_options & NAND_BBT_USE_FLASH)
		nand->bbt_options |= NAND_BBT_NO_OOB;

	nand->options |= NAND_NO_SUBPAGE_WRITE;

	ret = FUNC6(nand, nfc->data->ecc_caps,
				   mtd->oobsize - 2 * nsectors);
	if (ret) {
		FUNC0(nfc->dev, "failed to ECC init\n");
		return -EINVAL;
	}

	FUNC5(mtd, &meson_ooblayout_ops);

	ret = FUNC4(nand);
	if (ret)
		return -EINVAL;

	nand->ecc.mode = NAND_ECC_HW;
	nand->ecc.write_page_raw = meson_nfc_write_page_raw;
	nand->ecc.write_page = meson_nfc_write_page_hwecc;
	nand->ecc.write_oob_raw = nand_write_oob_std;
	nand->ecc.write_oob = nand_write_oob_std;

	nand->ecc.read_page_raw = meson_nfc_read_page_raw;
	nand->ecc.read_page = meson_nfc_read_page_hwecc;
	nand->ecc.read_oob_raw = meson_nfc_read_oob_raw;
	nand->ecc.read_oob = meson_nfc_read_oob;

	if (nand->options & NAND_BUSWIDTH_16) {
		FUNC0(nfc->dev, "16bits bus width not supported");
		return -EINVAL;
	}
	ret = FUNC3(nand);
	if (ret)
		return -ENOMEM;

	return ret;
}