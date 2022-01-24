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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd_ctrl; int /*<<< orphan*/  chip_delay; void* IO_ADDR_R; void* IO_ADDR_W; int /*<<< orphan*/  dev_ready; } ;
struct TYPE_6__ {int /*<<< orphan*/  algo; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_2__ legacy; int /*<<< orphan*/  options; TYPE_1__ ecc; } ;
struct TYPE_8__ {struct device* parent; } ;
struct mtd_info {int /*<<< orphan*/  size; TYPE_3__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  num_parts; int /*<<< orphan*/  parts; int /*<<< orphan*/  (* adjust_parts ) (TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  chip_delay; int /*<<< orphan*/  options; } ;
struct gpiomtd {void* nce; void* nwp; TYPE_4__ plat; void* rdy; void* cle; void* ale; void* io_sync; struct nand_chip nand_chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NAND_ECC_HAMMING ; 
 int /*<<< orphan*/  NAND_ECC_SOFT ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 struct gpiomtd* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_nand_cmd_ctrl ; 
 int /*<<< orphan*/  gpio_nand_devready ; 
 int FUNC7 (struct device*,TYPE_4__*) ; 
 struct resource* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC14 (struct nand_chip*) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct gpiomtd*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct gpiomtd *gpiomtd;
	struct nand_chip *chip;
	struct mtd_info *mtd;
	struct resource *res;
	struct device *dev = &pdev->dev;
	int ret = 0;

	if (!dev->of_node && !FUNC2(dev))
		return -EINVAL;

	gpiomtd = FUNC6(dev, sizeof(*gpiomtd), GFP_KERNEL);
	if (!gpiomtd)
		return -ENOMEM;

	chip = &gpiomtd->nand_chip;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	chip->legacy.IO_ADDR_R = FUNC5(dev, res);
	if (FUNC0(chip->legacy.IO_ADDR_R))
		return FUNC1(chip->legacy.IO_ADDR_R);

	res = FUNC8(pdev);
	if (res) {
		gpiomtd->io_sync = FUNC5(dev, res);
		if (FUNC0(gpiomtd->io_sync))
			return FUNC1(gpiomtd->io_sync);
	}

	ret = FUNC7(dev, &gpiomtd->plat);
	if (ret)
		return ret;

	/* Just enable the chip */
	gpiomtd->nce = FUNC4(dev, "nce", GPIOD_OUT_HIGH);
	if (FUNC0(gpiomtd->nce))
		return FUNC1(gpiomtd->nce);

	/* We disable write protection once we know probe() will succeed */
	gpiomtd->nwp = FUNC4(dev, "nwp", GPIOD_OUT_LOW);
	if (FUNC0(gpiomtd->nwp)) {
		ret = FUNC1(gpiomtd->nwp);
		goto out_ce;
	}

	gpiomtd->ale = FUNC3(dev, "ale", GPIOD_OUT_LOW);
	if (FUNC0(gpiomtd->ale)) {
		ret = FUNC1(gpiomtd->ale);
		goto out_ce;
	}

	gpiomtd->cle = FUNC3(dev, "cle", GPIOD_OUT_LOW);
	if (FUNC0(gpiomtd->cle)) {
		ret = FUNC1(gpiomtd->cle);
		goto out_ce;
	}

	gpiomtd->rdy = FUNC4(dev, "rdy", GPIOD_IN);
	if (FUNC0(gpiomtd->rdy)) {
		ret = FUNC1(gpiomtd->rdy);
		goto out_ce;
	}
	/* Using RDY pin */
	if (gpiomtd->rdy)
		chip->legacy.dev_ready = gpio_nand_devready;

	FUNC13(chip, pdev->dev.of_node);
	chip->legacy.IO_ADDR_W	= chip->legacy.IO_ADDR_R;
	chip->ecc.mode		= NAND_ECC_SOFT;
	chip->ecc.algo		= NAND_ECC_HAMMING;
	chip->options		= gpiomtd->plat.options;
	chip->legacy.chip_delay	= gpiomtd->plat.chip_delay;
	chip->legacy.cmd_ctrl	= gpio_nand_cmd_ctrl;

	mtd			= FUNC14(chip);
	mtd->dev.parent		= dev;

	FUNC16(pdev, gpiomtd);

	/* Disable write protection, if wired up */
	if (gpiomtd->nwp && !FUNC0(gpiomtd->nwp))
		FUNC9(gpiomtd->nwp, 1);

	ret = FUNC12(chip, 1);
	if (ret)
		goto err_wp;

	if (gpiomtd->plat.adjust_parts)
		gpiomtd->plat.adjust_parts(&gpiomtd->plat, mtd->size);

	ret = FUNC11(mtd, gpiomtd->plat.parts,
				  gpiomtd->plat.num_parts);
	if (!ret)
		return 0;

err_wp:
	if (gpiomtd->nwp && !FUNC0(gpiomtd->nwp))
		FUNC10(gpiomtd->nwp, 0);
out_ce:
	if (gpiomtd->nce && !FUNC0(gpiomtd->nce))
		FUNC10(gpiomtd->nce, 0);

	return ret;
}