#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_15__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_16__ {int chip_delay; TYPE_3__ dummy_controller; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  cmd_ctrl; void* IO_ADDR_W; void* IO_ADDR_R; } ;
struct TYPE_14__ {int strength; int /*<<< orphan*/  hwctl; int /*<<< orphan*/  correct; int /*<<< orphan*/  calculate; int /*<<< orphan*/  read_oob; int /*<<< orphan*/  write_oob; int /*<<< orphan*/  write_page; int /*<<< orphan*/  write_page_raw; int /*<<< orphan*/  read_page; int /*<<< orphan*/  read_page_raw; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_4__ legacy; TYPE_2__ ecc; } ;
struct TYPE_13__ {TYPE_6__* parent; } ;
struct mtd_info {char* name; TYPE_1__ dev; int /*<<< orphan*/  owner; } ;
struct lpc32xx_nand_host {int dma_buf_len; int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_chan; TYPE_5__* ncfg; int /*<<< orphan*/ * data_buf; int /*<<< orphan*/  io_base; struct nand_chip nand_chip; int /*<<< orphan*/  pdata; int /*<<< orphan*/  io_base_dma; } ;
struct TYPE_17__ {int wp_gpio; int /*<<< orphan*/  num_parts; int /*<<< orphan*/  parts; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LPC32XX_DMA_DATA_SIZE ; 
 int LPC32XX_ECC_SAVE_SIZE ; 
 int /*<<< orphan*/  NAND_ECC_HW_SYNDROME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,struct resource*) ; 
 void* FUNC10 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  lpc32xx_nand_cmd_ctrl ; 
 int /*<<< orphan*/  lpc32xx_nand_controller_ops ; 
 int /*<<< orphan*/  lpc32xx_nand_device_ready ; 
 int FUNC13 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  lpc32xx_nand_ecc_calculate ; 
 int /*<<< orphan*/  lpc32xx_nand_ecc_enable ; 
 int /*<<< orphan*/  lpc32xx_nand_read_buf ; 
 int /*<<< orphan*/  lpc32xx_nand_read_byte ; 
 int /*<<< orphan*/  lpc32xx_nand_read_oob_syndrome ; 
 int /*<<< orphan*/  lpc32xx_nand_read_page_raw_syndrome ; 
 int /*<<< orphan*/  lpc32xx_nand_read_page_syndrome ; 
 int /*<<< orphan*/  FUNC14 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  lpc32xx_nand_write_buf ; 
 int /*<<< orphan*/  lpc32xx_nand_write_oob_syndrome ; 
 int /*<<< orphan*/  lpc32xx_nand_write_page_raw_syndrome ; 
 int /*<<< orphan*/  lpc32xx_nand_write_page_syndrome ; 
 TYPE_5__* FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpc32xx_nand_host*) ; 
 int FUNC18 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct nand_chip*) ; 
 int /*<<< orphan*/  nand_correct_data ; 
 int FUNC20 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct nand_chip*,struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC22 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC23 (struct nand_chip*) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct lpc32xx_nand_host*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct lpc32xx_nand_host *host;
	struct mtd_info *mtd;
	struct nand_chip *chip;
	struct resource *rc;
	int res;

	/* Allocate memory for the device structure (and zero it) */
	host = FUNC10(&pdev->dev, sizeof(*host), GFP_KERNEL);
	if (!host)
		return -ENOMEM;

	rc = FUNC24(pdev, IORESOURCE_MEM, 0);
	host->io_base = FUNC9(&pdev->dev, rc);
	if (FUNC0(host->io_base))
		return FUNC1(host->io_base);

	host->io_base_dma = rc->start;
	if (pdev->dev.of_node)
		host->ncfg = FUNC15(&pdev->dev);
	if (!host->ncfg) {
		FUNC5(&pdev->dev,
			"Missing or bad NAND config from device tree\n");
		return -ENOENT;
	}
	if (host->ncfg->wp_gpio == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC12(host->ncfg->wp_gpio) && FUNC8(&pdev->dev,
			host->ncfg->wp_gpio, "NAND WP")) {
		FUNC5(&pdev->dev, "GPIO not available\n");
		return -EBUSY;
	}
	FUNC16(host);

	host->pdata = FUNC6(&pdev->dev);

	chip = &host->nand_chip;
	mtd = FUNC23(chip);
	FUNC21(chip, host);
	FUNC22(chip, pdev->dev.of_node);
	mtd->owner = THIS_MODULE;
	mtd->dev.parent = &pdev->dev;

	/* Get NAND clock */
	host->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(host->clk)) {
		FUNC5(&pdev->dev, "Clock failure\n");
		res = -ENOENT;
		goto enable_wp;
	}
	res = FUNC4(host->clk);
	if (res)
		goto enable_wp;

	/* Set NAND IO addresses and command/ready functions */
	chip->legacy.IO_ADDR_R = FUNC2(host->io_base);
	chip->legacy.IO_ADDR_W = FUNC2(host->io_base);
	chip->legacy.cmd_ctrl = lpc32xx_nand_cmd_ctrl;
	chip->legacy.dev_ready = lpc32xx_nand_device_ready;
	chip->legacy.chip_delay = 20; /* 20us command delay time */

	/* Init NAND controller */
	FUNC14(host);

	FUNC25(pdev, host);

	/* NAND callbacks for LPC32xx SLC hardware */
	chip->ecc.mode = NAND_ECC_HW_SYNDROME;
	chip->legacy.read_byte = lpc32xx_nand_read_byte;
	chip->legacy.read_buf = lpc32xx_nand_read_buf;
	chip->legacy.write_buf = lpc32xx_nand_write_buf;
	chip->ecc.read_page_raw = lpc32xx_nand_read_page_raw_syndrome;
	chip->ecc.read_page = lpc32xx_nand_read_page_syndrome;
	chip->ecc.write_page_raw = lpc32xx_nand_write_page_raw_syndrome;
	chip->ecc.write_page = lpc32xx_nand_write_page_syndrome;
	chip->ecc.write_oob = lpc32xx_nand_write_oob_syndrome;
	chip->ecc.read_oob = lpc32xx_nand_read_oob_syndrome;
	chip->ecc.calculate = lpc32xx_nand_ecc_calculate;
	chip->ecc.correct = nand_correct_data;
	chip->ecc.strength = 1;
	chip->ecc.hwctl = lpc32xx_nand_ecc_enable;

	/*
	 * Allocate a large enough buffer for a single huge page plus
	 * extra space for the spare area and ECC storage area
	 */
	host->dma_buf_len = LPC32XX_DMA_DATA_SIZE + LPC32XX_ECC_SAVE_SIZE;
	host->data_buf = FUNC10(&pdev->dev, host->dma_buf_len,
				      GFP_KERNEL);
	if (host->data_buf == NULL) {
		res = -ENOMEM;
		goto unprepare_clk;
	}

	res = FUNC13(host);
	if (res) {
		res = -EIO;
		goto unprepare_clk;
	}

	/* Find NAND device */
	chip->legacy.dummy_controller.ops = &lpc32xx_nand_controller_ops;
	res = FUNC20(chip, 1);
	if (res)
		goto release_dma;

	mtd->name = "nxp_lpc3220_slc";
	res = FUNC18(mtd, host->ncfg->parts,
				  host->ncfg->num_parts);
	if (res)
		goto cleanup_nand;

	return 0;

cleanup_nand:
	FUNC19(chip);
release_dma:
	FUNC11(host->dma_chan);
unprepare_clk:
	FUNC3(host->clk);
enable_wp:
	FUNC17(host);

	return res;
}