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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int chip_delay; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  write_buf; int /*<<< orphan*/  read_byte; int /*<<< orphan*/  cmdfunc; int /*<<< orphan*/  select_chip; int /*<<< orphan*/  dev_ready; } ;
struct TYPE_5__ {int /*<<< orphan*/  algo; int /*<<< orphan*/  mode; } ;
struct nand_chip {TYPE_3__ legacy; int /*<<< orphan*/  options; TYPE_2__ ecc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct mtd_info {TYPE_1__ dev; } ;
struct au1550nd_platdata {int /*<<< orphan*/  num_parts; int /*<<< orphan*/  parts; scalar_t__ devwidth; } ;
struct au1550nd_ctx {int cs; int /*<<< orphan*/  base; int /*<<< orphan*/  write_byte; struct nand_chip chip; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  NAND_ECC_HAMMING ; 
 int /*<<< orphan*/  NAND_ECC_SOFT ; 
 int /*<<< orphan*/  au1550_command ; 
 int /*<<< orphan*/  au1550_device_ready ; 
 int /*<<< orphan*/  au1550_select_chip ; 
 int /*<<< orphan*/  au_read_buf ; 
 int /*<<< orphan*/  au_read_buf16 ; 
 int /*<<< orphan*/  au_read_byte ; 
 int /*<<< orphan*/  au_read_byte16 ; 
 int /*<<< orphan*/  au_write_buf ; 
 int /*<<< orphan*/  au_write_buf16 ; 
 int /*<<< orphan*/  au_write_byte ; 
 int /*<<< orphan*/  au_write_byte16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct au1550nd_platdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct au1550nd_ctx*) ; 
 struct au1550nd_ctx* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nand_chip*,int) ; 
 struct mtd_info* FUNC9 (struct nand_chip*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct au1550nd_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct au1550nd_platdata *pd;
	struct au1550nd_ctx *ctx;
	struct nand_chip *this;
	struct mtd_info *mtd;
	struct resource *r;
	int ret, cs;

	pd = FUNC1(&pdev->dev);
	if (!pd) {
		FUNC0(&pdev->dev, "missing platform data\n");
		return -ENODEV;
	}

	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	r = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC0(&pdev->dev, "no NAND memory resource\n");
		ret = -ENODEV;
		goto out1;
	}
	if (FUNC13(r->start, FUNC14(r), "au1550-nand")) {
		FUNC0(&pdev->dev, "cannot claim NAND memory area\n");
		ret = -ENOMEM;
		goto out1;
	}

	ctx->base = FUNC3(r->start, 0x1000);
	if (!ctx->base) {
		FUNC0(&pdev->dev, "cannot remap NAND memory area\n");
		ret = -ENODEV;
		goto out2;
	}

	this = &ctx->chip;
	mtd = FUNC9(this);
	mtd->dev.parent = &pdev->dev;

	/* figure out which CS# r->start belongs to */
	cs = FUNC2(r->start);
	if (cs < 0) {
		FUNC0(&pdev->dev, "cannot detect NAND chipselect\n");
		ret = -ENODEV;
		goto out3;
	}
	ctx->cs = cs;

	this->legacy.dev_ready = au1550_device_ready;
	this->legacy.select_chip = au1550_select_chip;
	this->legacy.cmdfunc = au1550_command;

	/* 30 us command delay time */
	this->legacy.chip_delay = 30;
	this->ecc.mode = NAND_ECC_SOFT;
	this->ecc.algo = NAND_ECC_HAMMING;

	if (pd->devwidth)
		this->options |= NAND_BUSWIDTH_16;

	this->legacy.read_byte = (pd->devwidth) ? au_read_byte16 : au_read_byte;
	ctx->write_byte = (pd->devwidth) ? au_write_byte16 : au_write_byte;
	this->legacy.write_buf = (pd->devwidth) ? au_write_buf16 : au_write_buf;
	this->legacy.read_buf = (pd->devwidth) ? au_read_buf16 : au_read_buf;

	ret = FUNC8(this, 1);
	if (ret) {
		FUNC0(&pdev->dev, "NAND scan failed with %d\n", ret);
		goto out3;
	}

	FUNC7(mtd, pd->parts, pd->num_parts);

	FUNC11(pdev, ctx);

	return 0;

out3:
	FUNC4(ctx->base);
out2:
	FUNC12(r->start, FUNC14(r));
out1:
	FUNC5(ctx);
	return ret;
}