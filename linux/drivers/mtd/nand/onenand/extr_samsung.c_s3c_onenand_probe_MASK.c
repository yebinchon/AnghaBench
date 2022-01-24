#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct s3c_onenand {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct onenand_platform_data {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/ * parts; } ;
struct onenand_chip {int /*<<< orphan*/  subpagesize; int /*<<< orphan*/  options; void* base; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct mtd_info {int /*<<< orphan*/  writesize; scalar_t__ subpage_sft; TYPE_1__ dev; struct onenand_chip* priv; } ;
struct TYPE_7__ {scalar_t__ type; struct platform_device* pdev; int /*<<< orphan*/  complete; void* dma_addr; void* oob_buf; void* page_buf; void* ahb_addr; void* base; int /*<<< orphan*/  phys_base; } ;
struct TYPE_6__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MEM_CFG_OFFSET ; 
 int /*<<< orphan*/  ONENAND_SKIP_UNLOCK_CHECK ; 
 int ONENAND_SYS_CFG1_SYNC_READ ; 
 int FUNC1 (void*) ; 
 int SZ_4K ; 
 scalar_t__ TYPE_S5PC110 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct onenand_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* onenand ; 
 int /*<<< orphan*/  FUNC10 (struct mtd_info*) ; 
 int FUNC11 (struct mtd_info*,int) ; 
 TYPE_2__* FUNC12 (struct platform_device*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct mtd_info*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s5pc110_dma_irq ; 
 int /*<<< orphan*/  s5pc110_dma_ops ; 
 int /*<<< orphan*/  s5pc110_dma_poll ; 
 int /*<<< orphan*/  s5pc110_onenand_irq ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct onenand_platform_data *pdata;
	struct onenand_chip *this;
	struct mtd_info *mtd;
	struct resource *r;
	int size, err;

	pdata = FUNC3(&pdev->dev);
	/* No need to check pdata. the platform data is optional */

	size = sizeof(struct mtd_info) + sizeof(struct onenand_chip);
	mtd = FUNC6(&pdev->dev, size, GFP_KERNEL);
	if (!mtd)
		return -ENOMEM;

	onenand = FUNC6(&pdev->dev, sizeof(struct s3c_onenand),
			       GFP_KERNEL);
	if (!onenand)
		return -ENOMEM;

	this = (struct onenand_chip *) &mtd[1];
	mtd->priv = this;
	mtd->dev.parent = &pdev->dev;
	onenand->pdev = pdev;
	onenand->type = FUNC12(pdev)->driver_data;

	FUNC15(mtd);

	r = FUNC13(pdev, IORESOURCE_MEM, 0);
	onenand->base = FUNC5(&pdev->dev, r);
	if (FUNC0(onenand->base))
		return FUNC1(onenand->base);

	onenand->phys_base = r->start;

	/* Set onenand_chip also */
	this->base = onenand->base;

	/* Use runtime badblock check */
	this->options |= ONENAND_SKIP_UNLOCK_CHECK;

	if (onenand->type != TYPE_S5PC110) {
		r = FUNC13(pdev, IORESOURCE_MEM, 1);
		onenand->ahb_addr = FUNC5(&pdev->dev, r);
		if (FUNC0(onenand->ahb_addr))
			return FUNC1(onenand->ahb_addr);

		/* Allocate 4KiB BufferRAM */
		onenand->page_buf = FUNC6(&pdev->dev, SZ_4K,
						 GFP_KERNEL);
		if (!onenand->page_buf)
			return -ENOMEM;

		/* Allocate 128 SpareRAM */
		onenand->oob_buf = FUNC6(&pdev->dev, 128, GFP_KERNEL);
		if (!onenand->oob_buf)
			return -ENOMEM;

		/* S3C doesn't handle subpage write */
		mtd->subpage_sft = 0;
		this->subpagesize = mtd->writesize;

	} else { /* S5PC110 */
		r = FUNC13(pdev, IORESOURCE_MEM, 1);
		onenand->dma_addr = FUNC5(&pdev->dev, r);
		if (FUNC0(onenand->dma_addr))
			return FUNC1(onenand->dma_addr);

		s5pc110_dma_ops = s5pc110_dma_poll;
		/* Interrupt support */
		r = FUNC13(pdev, IORESOURCE_IRQ, 0);
		if (r) {
			FUNC8(&onenand->complete);
			s5pc110_dma_ops = s5pc110_dma_irq;
			err = FUNC7(&pdev->dev, r->start,
					       s5pc110_onenand_irq,
					       IRQF_SHARED, "onenand",
					       &onenand);
			if (err) {
				FUNC2(&pdev->dev, "failed to get irq\n");
				return err;
			}
		}
	}

	err = FUNC11(mtd, 1);
	if (err)
		return err;

	if (onenand->type != TYPE_S5PC110) {
		/* S3C doesn't handle subpage write */
		mtd->subpage_sft = 0;
		this->subpagesize = mtd->writesize;
	}

	if (FUNC16(MEM_CFG_OFFSET) & ONENAND_SYS_CFG1_SYNC_READ)
		FUNC4(&onenand->pdev->dev, "OneNAND Sync. Burst Read enabled\n");

	err = FUNC9(mtd, pdata ? pdata->parts : NULL,
				  pdata ? pdata->nr_parts : 0);
	if (err) {
		FUNC2(&pdev->dev, "failed to parse partitions and register the MTD device\n");
		FUNC10(mtd);
		return err;
	}

	FUNC14(pdev, mtd);

	return 0;
}