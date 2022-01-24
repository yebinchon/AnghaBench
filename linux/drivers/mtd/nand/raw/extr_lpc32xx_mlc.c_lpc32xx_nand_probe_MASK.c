#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_14__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_15__ {int chip_delay; TYPE_3__ dummy_controller; int /*<<< orphan*/  waitfunc; void* IO_ADDR_W; void* IO_ADDR_R; int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  cmd_ctrl; } ;
struct TYPE_13__ {int strength; int bytes; int /*<<< orphan*/  read_oob; int /*<<< orphan*/  write_oob; void* write_page; void* write_page_raw; void* read_page; void* read_page_raw; int /*<<< orphan*/  hwctl; } ;
struct nand_chip {int bbt_options; TYPE_4__ legacy; int /*<<< orphan*/ * bbt_md; int /*<<< orphan*/ * bbt_td; int /*<<< orphan*/  options; TYPE_2__ ecc; } ;
struct TYPE_12__ {TYPE_6__* parent; } ;
struct mtd_info {int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct lpc32xx_nand_host {scalar_t__ irq; TYPE_5__* ncfg; int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  comp_controller; int /*<<< orphan*/  comp_nand; int /*<<< orphan*/  io_base; int /*<<< orphan*/  pdata; struct nand_chip nand_chip; int /*<<< orphan*/  io_base_phy; struct platform_device* pdev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_16__ {int wp_gpio; int /*<<< orphan*/  num_parts; int /*<<< orphan*/  parts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NAND_BBT_NO_OOB ; 
 int NAND_BBT_USE_FLASH ; 
 int /*<<< orphan*/  NAND_NO_SUBPAGE_WRITE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,struct resource*) ; 
 struct lpc32xx_nand_host* FUNC11 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  lpc32xx_ecc_enable ; 
 int /*<<< orphan*/  lpc32xx_nand_bbt ; 
 int /*<<< orphan*/  lpc32xx_nand_bbt_mirror ; 
 int /*<<< orphan*/  lpc32xx_nand_cmd_ctrl ; 
 int /*<<< orphan*/  lpc32xx_nand_controller_ops ; 
 int /*<<< orphan*/  lpc32xx_nand_device_ready ; 
 int /*<<< orphan*/  FUNC19 (struct lpc32xx_nand_host*) ; 
 TYPE_5__* FUNC20 (TYPE_6__*) ; 
 int /*<<< orphan*/  lpc32xx_read_oob ; 
 void* lpc32xx_read_page ; 
 int /*<<< orphan*/  lpc32xx_waitfunc ; 
 int /*<<< orphan*/  FUNC21 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC22 (struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  lpc32xx_write_oob ; 
 void* lpc32xx_write_page_lowlevel ; 
 int /*<<< orphan*/  lpc3xxx_nand_irq ; 
 int FUNC23 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct nand_chip*) ; 
 int FUNC25 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct nand_chip*,struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC27 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC28 (struct nand_chip*) ; 
 scalar_t__ FUNC29 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC30 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct platform_device*,struct lpc32xx_nand_host*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpc32xx_nand_host*) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct lpc32xx_nand_host *host;
	struct mtd_info *mtd;
	struct nand_chip *nand_chip;
	struct resource *rc;
	int res;

	/* Allocate memory for the device structure (and zero it) */
	host = FUNC11(&pdev->dev, sizeof(*host), GFP_KERNEL);
	if (!host)
		return -ENOMEM;

	host->pdev = pdev;

	rc = FUNC30(pdev, IORESOURCE_MEM, 0);
	host->io_base = FUNC10(&pdev->dev, rc);
	if (FUNC0(host->io_base))
		return FUNC3(host->io_base);

	host->io_base_phy = rc->start;

	nand_chip = &host->nand_chip;
	mtd = FUNC28(nand_chip);
	if (pdev->dev.of_node)
		host->ncfg = FUNC20(&pdev->dev);
	if (!host->ncfg) {
		FUNC8(&pdev->dev,
			"Missing or bad NAND config from device tree\n");
		return -ENOENT;
	}
	if (host->ncfg->wp_gpio == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (FUNC15(host->ncfg->wp_gpio) &&
			FUNC16(host->ncfg->wp_gpio, "NAND WP")) {
		FUNC8(&pdev->dev, "GPIO not available\n");
		return -EBUSY;
	}
	FUNC21(host);

	host->pdata = FUNC9(&pdev->dev);

	/* link the private data structures */
	FUNC26(nand_chip, host);
	FUNC27(nand_chip, pdev->dev.of_node);
	mtd->dev.parent = &pdev->dev;

	/* Get NAND clock */
	host->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(host->clk)) {
		FUNC8(&pdev->dev, "Clock initialization failure\n");
		res = -ENOENT;
		goto free_gpio;
	}
	res = FUNC6(host->clk);
	if (res)
		goto put_clk;

	nand_chip->legacy.cmd_ctrl = lpc32xx_nand_cmd_ctrl;
	nand_chip->legacy.dev_ready = lpc32xx_nand_device_ready;
	nand_chip->legacy.chip_delay = 25; /* us */
	nand_chip->legacy.IO_ADDR_R = FUNC1(host->io_base);
	nand_chip->legacy.IO_ADDR_W = FUNC1(host->io_base);

	/* Init NAND controller */
	FUNC19(host);

	FUNC31(pdev, host);

	/* Initialize function pointers */
	nand_chip->ecc.hwctl = lpc32xx_ecc_enable;
	nand_chip->ecc.read_page_raw = lpc32xx_read_page;
	nand_chip->ecc.read_page = lpc32xx_read_page;
	nand_chip->ecc.write_page_raw = lpc32xx_write_page_lowlevel;
	nand_chip->ecc.write_page = lpc32xx_write_page_lowlevel;
	nand_chip->ecc.write_oob = lpc32xx_write_oob;
	nand_chip->ecc.read_oob = lpc32xx_read_oob;
	nand_chip->ecc.strength = 4;
	nand_chip->ecc.bytes = 10;
	nand_chip->legacy.waitfunc = lpc32xx_waitfunc;

	nand_chip->options = NAND_NO_SUBPAGE_WRITE;
	nand_chip->bbt_options = NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
	nand_chip->bbt_td = &lpc32xx_nand_bbt;
	nand_chip->bbt_md = &lpc32xx_nand_bbt_mirror;

	if (use_dma) {
		res = FUNC18(host);
		if (res) {
			res = -EIO;
			goto unprepare_clk;
		}
	}

	/* initially clear interrupt status */
	FUNC32(FUNC2(host->io_base));

	FUNC17(&host->comp_nand);
	FUNC17(&host->comp_controller);

	host->irq = FUNC29(pdev, 0);
	if (host->irq < 0) {
		FUNC8(&pdev->dev, "failed to get platform irq\n");
		res = -EINVAL;
		goto release_dma_chan;
	}

	if (FUNC33(host->irq, (irq_handler_t)&lpc3xxx_nand_irq,
			IRQF_TRIGGER_HIGH, DRV_NAME, host)) {
		FUNC8(&pdev->dev, "Error requesting NAND IRQ\n");
		res = -ENXIO;
		goto release_dma_chan;
	}

	/*
	 * Scan to find existence of the device and get the type of NAND device:
	 * SMALL block or LARGE block.
	 */
	nand_chip->legacy.dummy_controller.ops = &lpc32xx_nand_controller_ops;
	res = FUNC25(nand_chip, 1);
	if (res)
		goto free_irq;

	mtd->name = DRV_NAME;

	res = FUNC23(mtd, host->ncfg->parts,
				  host->ncfg->num_parts);
	if (res)
		goto cleanup_nand;

	return 0;

cleanup_nand:
	FUNC24(nand_chip);
free_irq:
	FUNC13(host->irq, host);
release_dma_chan:
	if (use_dma)
		FUNC12(host->dma_chan);
unprepare_clk:
	FUNC4(host->clk);
put_clk:
	FUNC7(host->clk);
free_gpio:
	FUNC22(host);
	FUNC14(host->ncfg->wp_gpio);

	return res;
}