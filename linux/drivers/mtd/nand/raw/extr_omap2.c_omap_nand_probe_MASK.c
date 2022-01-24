#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * priv; } ;
struct TYPE_7__ {int chip_delay; int /*<<< orphan*/  waitfunc; int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  cmd_ctrl; scalar_t__ IO_ADDR_R; scalar_t__ IO_ADDR_W; } ;
struct nand_chip {int options; TYPE_3__ ecc; int /*<<< orphan*/  bbt_options; TYPE_2__ legacy; TYPE_4__* controller; } ;
struct omap_nand_info {int devsize; int /*<<< orphan*/  dma; scalar_t__ flash_bbt; scalar_t__ ready_gpiod; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  gpmc_cs; struct nand_chip nand; int /*<<< orphan*/  ops; int /*<<< orphan*/  reg; struct platform_device* pdev; } ;
struct TYPE_6__ {struct device* parent; } ;
struct mtd_info {scalar_t__ name; TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAND_BBT_USE_FLASH ; 
 int NAND_BUSWIDTH_16 ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,struct resource*) ; 
 scalar_t__ FUNC6 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct omap_nand_info* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int FUNC14 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC16 (struct nand_chip*) ; 
 int /*<<< orphan*/  omap_dev_ready ; 
 int FUNC17 (struct device*,struct omap_nand_info*) ; 
 TYPE_4__ omap_gpmc_controller ; 
 int omap_gpmc_controller_initialized ; 
 int /*<<< orphan*/  omap_hwcontrol ; 
 int /*<<< orphan*/  omap_nand_controller_ops ; 
 int /*<<< orphan*/  omap_wait ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct mtd_info*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct omap_nand_info		*info;
	struct mtd_info			*mtd;
	struct nand_chip		*nand_chip;
	int				err;
	struct resource			*res;
	struct device			*dev = &pdev->dev;

	info = FUNC7(&pdev->dev, sizeof(struct omap_nand_info),
				GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->pdev = pdev;

	err = FUNC17(dev, info);
	if (err)
		return err;

	info->ops = FUNC9(&info->reg, info->gpmc_cs);
	if (!info->ops) {
		FUNC3(&pdev->dev, "Failed to get GPMC->NAND interface\n");
		return -ENODEV;
	}

	nand_chip		= &info->nand;
	mtd			= FUNC16(nand_chip);
	mtd->dev.parent		= &pdev->dev;
	nand_chip->ecc.priv	= NULL;
	FUNC15(nand_chip, dev->of_node);

	if (!mtd->name) {
		mtd->name = FUNC6(&pdev->dev, GFP_KERNEL,
					   "omap2-nand.%d", info->gpmc_cs);
		if (!mtd->name) {
			FUNC3(&pdev->dev, "Failed to set MTD name\n");
			return -ENOMEM;
		}
	}

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	nand_chip->legacy.IO_ADDR_R = FUNC5(&pdev->dev, res);
	if (FUNC0(nand_chip->legacy.IO_ADDR_R))
		return FUNC2(nand_chip->legacy.IO_ADDR_R);

	info->phys_base = res->start;

	if (!omap_gpmc_controller_initialized) {
		omap_gpmc_controller.ops = &omap_nand_controller_ops;
		FUNC13(&omap_gpmc_controller);
		omap_gpmc_controller_initialized = true;
	}

	nand_chip->controller = &omap_gpmc_controller;

	nand_chip->legacy.IO_ADDR_W = nand_chip->legacy.IO_ADDR_R;
	nand_chip->legacy.cmd_ctrl  = omap_hwcontrol;

	info->ready_gpiod = FUNC4(&pdev->dev, "rb",
						    GPIOD_IN);
	if (FUNC0(info->ready_gpiod)) {
		FUNC3(dev, "failed to get ready gpio\n");
		return FUNC2(info->ready_gpiod);
	}

	/*
	 * If RDY/BSY line is connected to OMAP then use the omap ready
	 * function and the generic nand_wait function which reads the status
	 * register after monitoring the RDY/BSY line. Otherwise use a standard
	 * chip delay which is slightly more than tR (AC Timing) of the NAND
	 * device and read status register until you get a failure or success
	 */
	if (info->ready_gpiod) {
		nand_chip->legacy.dev_ready = omap_dev_ready;
		nand_chip->legacy.chip_delay = 0;
	} else {
		nand_chip->legacy.waitfunc = omap_wait;
		nand_chip->legacy.chip_delay = 50;
	}

	if (info->flash_bbt)
		nand_chip->bbt_options |= NAND_BBT_USE_FLASH;

	/* scan NAND device connected to chip controller */
	nand_chip->options |= info->devsize & NAND_BUSWIDTH_16;

	err = FUNC14(nand_chip, 1);
	if (err)
		goto return_error;

	err = FUNC10(mtd, NULL, 0);
	if (err)
		goto cleanup_nand;

	FUNC19(pdev, mtd);

	return 0;

cleanup_nand:
	FUNC12(nand_chip);

return_error:
	if (!FUNC1(info->dma))
		FUNC8(info->dma);
	if (nand_chip->ecc.priv) {
		FUNC11(nand_chip->ecc.priv);
		nand_chip->ecc.priv = NULL;
	}
	return err;
}