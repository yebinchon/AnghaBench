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
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  strength; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; } ;
struct nand_chip {int options; TYPE_2__ ecc; TYPE_3__* controller; } ;
struct stm32_fmc2_nand {int /*<<< orphan*/  ncs; struct nand_chip chip; } ;
struct stm32_fmc2_nfc {int cs_assigned; struct reset_control* clk; int /*<<< orphan*/  dma_ecc_sg; int /*<<< orphan*/  dma_data_sg; scalar_t__ dma_rx_ch; scalar_t__ dma_tx_ch; scalar_t__ dma_ecc_ch; TYPE_3__ base; struct stm32_fmc2_nand nand; int /*<<< orphan*/  complete; struct reset_control** addr_base; struct reset_control** cmd_base; int /*<<< orphan*/ * data_phys_addr; struct reset_control** data_base; int /*<<< orphan*/  io_phys_addr; struct reset_control* io_base; struct device* dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FMC2_ECC_BCH8 ; 
 int /*<<< orphan*/  FMC2_ECC_STEP_SIZE ; 
 int FMC2_MAX_CE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct reset_control*) ; 
 int NAND_BUSWIDTH_AUTO ; 
 int /*<<< orphan*/  NAND_ECC_HW ; 
 int NAND_NO_SUBPAGE_WRITE ; 
 int NAND_USE_BOUNCE_BUFFER ; 
 int FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*) ; 
 int FUNC4 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct reset_control* FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct device*,struct resource*) ; 
 struct stm32_fmc2_nfc* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_fmc2_nfc*) ; 
 struct reset_control* FUNC11 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int FUNC17 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC18 (struct nand_chip*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  FUNC22 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC23 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  FUNC26 (struct stm32_fmc2_nfc*) ; 
 int /*<<< orphan*/  stm32_fmc2_irq ; 
 int /*<<< orphan*/  stm32_fmc2_nand_controller_ops ; 
 int FUNC27 (struct stm32_fmc2_nfc*) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct reset_control *rstc;
	struct stm32_fmc2_nfc *fmc2;
	struct stm32_fmc2_nand *nand;
	struct resource *res;
	struct mtd_info *mtd;
	struct nand_chip *chip;
	int chip_cs, mem_region, ret, irq;

	fmc2 = FUNC9(dev, sizeof(*fmc2), GFP_KERNEL);
	if (!fmc2)
		return -ENOMEM;

	fmc2->dev = dev;
	FUNC16(&fmc2->base);
	fmc2->base.ops = &stm32_fmc2_nand_controller_ops;

	ret = FUNC27(fmc2);
	if (ret)
		return ret;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	fmc2->io_base = FUNC8(dev, res);
	if (FUNC1(fmc2->io_base))
		return FUNC2(fmc2->io_base);

	fmc2->io_phys_addr = res->start;

	for (chip_cs = 0, mem_region = 1; chip_cs < FMC2_MAX_CE;
	     chip_cs++, mem_region += 3) {
		if (!(fmc2->cs_assigned & FUNC0(chip_cs)))
			continue;

		res = FUNC20(pdev, IORESOURCE_MEM, mem_region);
		fmc2->data_base[chip_cs] = FUNC8(dev, res);
		if (FUNC1(fmc2->data_base[chip_cs]))
			return FUNC2(fmc2->data_base[chip_cs]);

		fmc2->data_phys_addr[chip_cs] = res->start;

		res = FUNC20(pdev, IORESOURCE_MEM,
					    mem_region + 1);
		fmc2->cmd_base[chip_cs] = FUNC8(dev, res);
		if (FUNC1(fmc2->cmd_base[chip_cs]))
			return FUNC2(fmc2->cmd_base[chip_cs]);

		res = FUNC20(pdev, IORESOURCE_MEM,
					    mem_region + 2);
		fmc2->addr_base[chip_cs] = FUNC8(dev, res);
		if (FUNC1(fmc2->addr_base[chip_cs]))
			return FUNC2(fmc2->addr_base[chip_cs]);
	}

	irq = FUNC19(pdev, 0);
	if (irq < 0) {
		if (irq != -EPROBE_DEFER)
			FUNC5(dev, "IRQ error missing or invalid\n");
		return irq;
	}

	ret = FUNC10(dev, irq, stm32_fmc2_irq, 0,
			       FUNC6(dev), fmc2);
	if (ret) {
		FUNC5(dev, "failed to request irq\n");
		return ret;
	}

	FUNC13(&fmc2->complete);

	fmc2->clk = FUNC7(dev, NULL);
	if (FUNC1(fmc2->clk))
		return FUNC2(fmc2->clk);

	ret = FUNC4(fmc2->clk);
	if (ret) {
		FUNC5(dev, "can not enable the clock\n");
		return ret;
	}

	rstc = FUNC11(dev, NULL);
	if (!FUNC1(rstc)) {
		FUNC22(rstc);
		FUNC23(rstc);
	}

	/* DMA setup */
	ret = FUNC25(fmc2);
	if (ret)
		return ret;

	/* FMC2 init routine */
	FUNC26(fmc2);

	nand = &fmc2->nand;
	chip = &nand->chip;
	mtd = FUNC18(chip);
	mtd->dev.parent = dev;

	chip->controller = &fmc2->base;
	chip->options |= NAND_BUSWIDTH_AUTO | NAND_NO_SUBPAGE_WRITE |
			 NAND_USE_BOUNCE_BUFFER;

	/* Default ECC settings */
	chip->ecc.mode = NAND_ECC_HW;
	chip->ecc.size = FMC2_ECC_STEP_SIZE;
	chip->ecc.strength = FMC2_ECC_BCH8;

	/* Scan to find existence of the device */
	ret = FUNC17(chip, nand->ncs);
	if (ret)
		goto err_scan;

	ret = FUNC14(mtd, NULL, 0);
	if (ret)
		goto err_device_register;

	FUNC21(pdev, fmc2);

	return 0;

err_device_register:
	FUNC15(chip);

err_scan:
	if (fmc2->dma_ecc_ch)
		FUNC12(fmc2->dma_ecc_ch);
	if (fmc2->dma_tx_ch)
		FUNC12(fmc2->dma_tx_ch);
	if (fmc2->dma_rx_ch)
		FUNC12(fmc2->dma_rx_ch);

	FUNC24(&fmc2->dma_data_sg);
	FUNC24(&fmc2->dma_ecc_sg);

	FUNC3(fmc2->clk);

	return ret;
}