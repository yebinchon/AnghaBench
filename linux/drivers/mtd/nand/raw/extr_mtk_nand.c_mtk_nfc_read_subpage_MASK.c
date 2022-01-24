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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_4__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_5__ {scalar_t__ sec; int /*<<< orphan*/  (* bm_swap ) (struct mtd_info*,int /*<<< orphan*/ *,int) ;} ;
struct mtk_nfc_nand_chip {int spare_per_sector; TYPE_2__ bad_mark; } ;
struct TYPE_6__ {int sectors; int /*<<< orphan*/  op; int /*<<< orphan*/  mode; } ;
struct mtk_nfc {int /*<<< orphan*/  ecc; int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/  done; TYPE_3__ ecc_cfg; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CNFG_AHB ; 
 int CNFG_AUTO_FMT_EN ; 
 int CNFG_DMA_BURST_EN ; 
 int CNFG_HW_ECC_EN ; 
 int CNFG_READ_EN ; 
 int CON_BRD ; 
 int CON_SEC_SHIFT ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ECC_DECODE ; 
 int /*<<< orphan*/  ECC_NFI_MODE ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int INTR_AHB_DONE_EN ; 
 int /*<<< orphan*/  MTK_TIMEOUT ; 
 scalar_t__ NFI_BYTELEN ; 
 int /*<<< orphan*/  NFI_CNFG ; 
 int /*<<< orphan*/  NFI_CON ; 
 int /*<<< orphan*/  NFI_INTR_EN ; 
 int /*<<< orphan*/  NFI_STRADDR ; 
 int /*<<< orphan*/  NFI_STRDATA ; 
 int STAR_EN ; 
 scalar_t__ FUNC2 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nand_chip*,int,int) ; 
 int FUNC15 (struct mtd_info*,int /*<<< orphan*/ *,int,int) ; 
 struct mtk_nfc* FUNC16 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC17 (struct nand_chip*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int FUNC22 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 struct mtk_nfc_nand_chip* FUNC24 (struct nand_chip*) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct mtd_info *mtd, struct nand_chip *chip,
				u32 data_offs, u32 readlen,
				u8 *bufpoi, int page, int raw)
{
	struct mtk_nfc *nfc = FUNC16(chip);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC24(chip);
	u32 spare = mtk_nand->spare_per_sector;
	u32 column, sectors, start, end, reg;
	dma_addr_t addr;
	int bitflips = 0;
	size_t len;
	u8 *buf;
	int rc;

	start = data_offs / chip->ecc.size;
	end = FUNC1(data_offs + readlen, chip->ecc.size);

	sectors = end - start;
	column = start * (chip->ecc.size + spare);

	len = sectors * chip->ecc.size + (raw ? sectors * spare : 0);
	buf = bufpoi + start * chip->ecc.size;

	FUNC17(chip, page, column, NULL, 0);

	addr = FUNC5(nfc->dev, buf, len, DMA_FROM_DEVICE);
	rc = FUNC6(nfc->dev, addr);
	if (rc) {
		FUNC3(nfc->dev, "dma mapping error\n");

		return -EINVAL;
	}

	reg = FUNC19(nfc, NFI_CNFG);
	reg |= CNFG_READ_EN | CNFG_DMA_BURST_EN | CNFG_AHB;
	if (!raw) {
		reg |= CNFG_AUTO_FMT_EN | CNFG_HW_ECC_EN;
		FUNC21(nfc, reg, NFI_CNFG);

		nfc->ecc_cfg.mode = ECC_NFI_MODE;
		nfc->ecc_cfg.sectors = sectors;
		nfc->ecc_cfg.op = ECC_DECODE;
		rc = FUNC12(nfc->ecc, &nfc->ecc_cfg);
		if (rc) {
			FUNC3(nfc->dev, "ecc enable\n");
			/* clear NFI_CNFG */
			reg &= ~(CNFG_DMA_BURST_EN | CNFG_AHB | CNFG_READ_EN |
				CNFG_AUTO_FMT_EN | CNFG_HW_ECC_EN);
			FUNC21(nfc, reg, NFI_CNFG);
			FUNC7(nfc->dev, addr, len, DMA_FROM_DEVICE);

			return rc;
		}
	} else {
		FUNC21(nfc, reg, NFI_CNFG);
	}

	FUNC20(nfc, sectors << CON_SEC_SHIFT, NFI_CON);
	FUNC21(nfc, INTR_AHB_DONE_EN, NFI_INTR_EN);
	FUNC20(nfc, FUNC9(addr), NFI_STRADDR);

	FUNC8(&nfc->done);
	reg = FUNC18(nfc, NFI_CON) | CON_BRD;
	FUNC20(nfc, reg, NFI_CON);
	FUNC21(nfc, STAR_EN, NFI_STRDATA);

	rc = FUNC25(&nfc->done, FUNC10(500));
	if (!rc)
		FUNC4(nfc->dev, "read ahb/dma done timeout\n");

	rc = FUNC22(nfc->regs + NFI_BYTELEN, reg,
				       FUNC0(reg) >= sectors, 10,
				       MTK_TIMEOUT);
	if (rc < 0) {
		FUNC3(nfc->dev, "subpage done timeout\n");
		bitflips = -EIO;
	} else if (!raw) {
		rc = FUNC13(nfc->ecc, ECC_DECODE);
		bitflips = rc < 0 ? -ETIMEDOUT :
			FUNC15(mtd, buf, start, sectors);
		FUNC14(chip, start, sectors);
	}

	FUNC7(nfc->dev, addr, len, DMA_FROM_DEVICE);

	if (raw)
		goto done;

	FUNC11(nfc->ecc);

	if (FUNC2(mtk_nand->bad_mark.sec, start, end) == mtk_nand->bad_mark.sec)
		mtk_nand->bad_mark.bm_swap(mtd, bufpoi, raw);
done:
	FUNC20(nfc, 0, NFI_CON);

	return bitflips;
}