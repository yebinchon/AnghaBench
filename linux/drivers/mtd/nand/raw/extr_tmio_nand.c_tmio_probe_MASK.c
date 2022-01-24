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
struct tmio_nand_data {int /*<<< orphan*/  num_partitions; int /*<<< orphan*/ * partition; int /*<<< orphan*/ * part_parsers; int /*<<< orphan*/  badblock_pattern; } ;
struct TYPE_6__ {int chip_delay; int /*<<< orphan*/  waitfunc; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  dev_ready; int /*<<< orphan*/  cmd_ctrl; void* IO_ADDR_W; void* IO_ADDR_R; } ;
struct TYPE_5__ {int size; int bytes; int strength; int /*<<< orphan*/  correct; int /*<<< orphan*/  calculate; int /*<<< orphan*/  hwctl; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_3__ legacy; int /*<<< orphan*/  badblock_pattern; TYPE_2__ ecc; } ;
struct tmio_nand {int fcr_base; int irq; void* fcr; void* ccr; struct nand_chip chip; struct platform_device* dev; int /*<<< orphan*/  comp; } ;
struct resource {int start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct mtd_info {char* name; TYPE_1__ dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  NAND_ECC_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct tmio_nand_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct tmio_nand* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmio_nand*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*) ; 
 int FUNC10 (struct nand_chip*,int) ; 
 struct mtd_info* FUNC11 (struct nand_chip*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct tmio_nand*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int FUNC16 (struct platform_device*,struct tmio_nand*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct tmio_nand*) ; 
 int /*<<< orphan*/  tmio_irq ; 
 int /*<<< orphan*/  tmio_nand_calculate_ecc ; 
 int /*<<< orphan*/  tmio_nand_correct_data ; 
 int /*<<< orphan*/  tmio_nand_dev_ready ; 
 int /*<<< orphan*/  tmio_nand_enable_hwecc ; 
 int /*<<< orphan*/  tmio_nand_hwcontrol ; 
 int /*<<< orphan*/  tmio_nand_read_buf ; 
 int /*<<< orphan*/  tmio_nand_read_byte ; 
 int /*<<< orphan*/  tmio_nand_wait ; 
 int /*<<< orphan*/  tmio_nand_write_buf ; 

__attribute__((used)) static int FUNC18(struct platform_device *dev)
{
	struct tmio_nand_data *data = FUNC1(&dev->dev);
	struct resource *fcr = FUNC13(dev,
			IORESOURCE_MEM, 0);
	struct resource *ccr = FUNC13(dev,
			IORESOURCE_MEM, 1);
	int irq = FUNC12(dev, 0);
	struct tmio_nand *tmio;
	struct mtd_info *mtd;
	struct nand_chip *nand_chip;
	int retval;

	if (data == NULL)
		FUNC3(&dev->dev, "NULL platform data!\n");

	tmio = FUNC5(&dev->dev, sizeof(*tmio), GFP_KERNEL);
	if (!tmio)
		return -ENOMEM;

	FUNC7(&tmio->comp);

	tmio->dev = dev;

	FUNC14(dev, tmio);
	nand_chip = &tmio->chip;
	mtd = FUNC11(nand_chip);
	mtd->name = "tmio-nand";
	mtd->dev.parent = &dev->dev;

	tmio->ccr = FUNC4(&dev->dev, ccr->start, FUNC15(ccr));
	if (!tmio->ccr)
		return -EIO;

	tmio->fcr_base = fcr->start & 0xfffff;
	tmio->fcr = FUNC4(&dev->dev, fcr->start, FUNC15(fcr));
	if (!tmio->fcr)
		return -EIO;

	retval = FUNC16(dev, tmio);
	if (retval)
		return retval;

	/* Set address of NAND IO lines */
	nand_chip->legacy.IO_ADDR_R = tmio->fcr;
	nand_chip->legacy.IO_ADDR_W = tmio->fcr;

	/* Set address of hardware control function */
	nand_chip->legacy.cmd_ctrl = tmio_nand_hwcontrol;
	nand_chip->legacy.dev_ready = tmio_nand_dev_ready;
	nand_chip->legacy.read_byte = tmio_nand_read_byte;
	nand_chip->legacy.write_buf = tmio_nand_write_buf;
	nand_chip->legacy.read_buf = tmio_nand_read_buf;

	/* set eccmode using hardware ECC */
	nand_chip->ecc.mode = NAND_ECC_HW;
	nand_chip->ecc.size = 512;
	nand_chip->ecc.bytes = 6;
	nand_chip->ecc.strength = 2;
	nand_chip->ecc.hwctl = tmio_nand_enable_hwecc;
	nand_chip->ecc.calculate = tmio_nand_calculate_ecc;
	nand_chip->ecc.correct = tmio_nand_correct_data;

	if (data)
		nand_chip->badblock_pattern = data->badblock_pattern;

	/* 15 us command delay time */
	nand_chip->legacy.chip_delay = 15;

	retval = FUNC6(&dev->dev, irq, &tmio_irq, 0,
				  FUNC2(&dev->dev), tmio);
	if (retval) {
		FUNC0(&dev->dev, "request_irq error %d\n", retval);
		goto err_irq;
	}

	tmio->irq = irq;
	nand_chip->legacy.waitfunc = tmio_nand_wait;

	/* Scan to find existence of the device */
	retval = FUNC10(nand_chip, 1);
	if (retval)
		goto err_irq;

	/* Register the partitions */
	retval = FUNC8(mtd,
					   data ? data->part_parsers : NULL,
					   NULL,
					   data ? data->partition : NULL,
					   data ? data->num_partitions : 0);
	if (!retval)
		return retval;

	FUNC9(nand_chip);

err_irq:
	FUNC17(dev, tmio);
	return retval;
}