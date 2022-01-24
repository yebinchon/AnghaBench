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
struct nand_chip {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* bm_swap ) (struct mtd_info*,int /*<<< orphan*/ *,int) ;} ;
struct mtk_nfc_nand_chip {TYPE_1__ bad_mark; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  op; } ;
struct mtk_nfc {int /*<<< orphan*/  ecc; int /*<<< orphan*/ * buffer; TYPE_2__ ecc_cfg; } ;
struct mtd_info {size_t writesize; size_t oobsize; } ;

/* Variables and functions */
 int CNFG_AUTO_FMT_EN ; 
 int CNFG_HW_ECC_EN ; 
 int /*<<< orphan*/  ECC_ENCODE ; 
 int /*<<< orphan*/  ECC_NFI_MODE ; 
 int /*<<< orphan*/  NFI_CNFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/  const*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 struct mtk_nfc* FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nand_chip*) ; 
 int FUNC8 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 struct mtk_nfc_nand_chip* FUNC11 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC12(struct mtd_info *mtd, struct nand_chip *chip,
			      const u8 *buf, int page, int raw)
{
	struct mtk_nfc *nfc = FUNC5(chip);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC11(chip);
	size_t len;
	const u8 *bufpoi;
	u32 reg;
	int ret;

	FUNC6(chip, page, 0, NULL, 0);

	if (!raw) {
		/* OOB => FDM: from register,  ECC: from HW */
		reg = FUNC8(nfc, NFI_CNFG) | CNFG_AUTO_FMT_EN;
		FUNC9(nfc, reg | CNFG_HW_ECC_EN, NFI_CNFG);

		nfc->ecc_cfg.op = ECC_ENCODE;
		nfc->ecc_cfg.mode = ECC_NFI_MODE;
		ret = FUNC2(nfc->ecc, &nfc->ecc_cfg);
		if (ret) {
			/* clear NFI config */
			reg = FUNC8(nfc, NFI_CNFG);
			reg &= ~(CNFG_AUTO_FMT_EN | CNFG_HW_ECC_EN);
			FUNC9(nfc, reg, NFI_CNFG);

			return ret;
		}

		FUNC0(nfc->buffer, buf, mtd->writesize);
		mtk_nand->bad_mark.bm_swap(mtd, nfc->buffer, raw);
		bufpoi = nfc->buffer;

		/* write OOB into the FDM registers (OOB area in MTK NAND) */
		FUNC4(chip);
	} else {
		bufpoi = buf;
	}

	len = mtd->writesize + (raw ? mtd->oobsize : 0);
	ret = FUNC3(mtd, chip, bufpoi, page, len);

	if (!raw)
		FUNC1(nfc->ecc);

	if (ret)
		return ret;

	return FUNC7(chip);
}