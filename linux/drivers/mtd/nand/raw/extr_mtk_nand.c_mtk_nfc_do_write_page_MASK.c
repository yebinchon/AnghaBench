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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int steps; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtk_nfc {struct device* dev; scalar_t__ regs; int /*<<< orphan*/  done; } ;
struct mtd_info {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CNFG_AHB ; 
 int CNFG_DMA_BURST_EN ; 
 int CON_BWR ; 
 int CON_SEC_SHIFT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int INTR_AHB_DONE_EN ; 
 int /*<<< orphan*/  MTK_TIMEOUT ; 
 scalar_t__ NFI_ADDRCNTR ; 
 int /*<<< orphan*/  NFI_CNFG ; 
 int /*<<< orphan*/  NFI_CON ; 
 int /*<<< orphan*/  NFI_INTR_EN ; 
 int /*<<< orphan*/  NFI_STRADDR ; 
 int /*<<< orphan*/  NFI_STRDATA ; 
 int STAR_EN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct mtk_nfc* FUNC8 (struct nand_chip*) ; 
 int FUNC9 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct mtd_info *mtd, struct nand_chip *chip,
				 const u8 *buf, int page, int len)
{
	struct mtk_nfc *nfc = FUNC8(chip);
	struct device *dev = nfc->dev;
	dma_addr_t addr;
	u32 reg;
	int ret;

	addr = FUNC2(dev, (void *)buf, len, DMA_TO_DEVICE);
	ret = FUNC3(nfc->dev, addr);
	if (ret) {
		FUNC1(nfc->dev, "dma mapping error\n");
		return -EINVAL;
	}

	reg = FUNC10(nfc, NFI_CNFG) | CNFG_AHB | CNFG_DMA_BURST_EN;
	FUNC12(nfc, reg, NFI_CNFG);

	FUNC11(nfc, chip->ecc.steps << CON_SEC_SHIFT, NFI_CON);
	FUNC11(nfc, FUNC6(addr), NFI_STRADDR);
	FUNC12(nfc, INTR_AHB_DONE_EN, NFI_INTR_EN);

	FUNC5(&nfc->done);

	reg = FUNC9(nfc, NFI_CON) | CON_BWR;
	FUNC11(nfc, reg, NFI_CON);
	FUNC12(nfc, STAR_EN, NFI_STRDATA);

	ret = FUNC14(&nfc->done, FUNC7(500));
	if (!ret) {
		FUNC1(dev, "program ahb done timeout\n");
		FUNC12(nfc, 0, NFI_INTR_EN);
		ret = -ETIMEDOUT;
		goto timeout;
	}

	ret = FUNC13(nfc->regs + NFI_ADDRCNTR, reg,
					FUNC0(reg) >= chip->ecc.steps,
					10, MTK_TIMEOUT);
	if (ret)
		FUNC1(dev, "hwecc write timeout\n");

timeout:

	FUNC4(nfc->dev, addr, len, DMA_TO_DEVICE);
	FUNC11(nfc, 0, NFI_CON);

	return ret;
}