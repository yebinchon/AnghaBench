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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int options; } ;
struct omap_nand_info {int buf_len; TYPE_1__ nand; int /*<<< orphan*/  gpmc_cs; int /*<<< orphan*/  comp; int /*<<< orphan*/  gpmc_irq_fifo; int /*<<< orphan*/  gpmc_irq_count; int /*<<< orphan*/ * buf; int /*<<< orphan*/  iomode; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  OMAP_NAND_IO_READ ; 
 int PREFETCH_FIFOTHRESHOLD_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct omap_nand_info* FUNC2 (struct mtd_info*) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int,int,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct nand_chip *chip, u_char *buf,
				   int len)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct omap_nand_info *info = FUNC2(mtd);
	int ret = 0;

	if (len <= mtd->oobsize) {
		FUNC8(chip, buf, len);
		return;
	}

	info->iomode = OMAP_NAND_IO_READ;
	info->buf = buf;
	FUNC1(&info->comp);

	/*  configure and start prefetch transfer */
	ret = FUNC4(info->gpmc_cs,
			PREFETCH_FIFOTHRESHOLD_MAX/2, 0x0, len, 0x0, info);
	if (ret)
		/* PFPW engine is busy, use cpu copy method */
		goto out_copy;

	info->buf_len = len;

	FUNC0(info->gpmc_irq_count);
	FUNC0(info->gpmc_irq_fifo);

	/* waiting for read to complete */
	FUNC9(&info->comp);

	/* disable and stop the PFPW engine */
	FUNC5(info->gpmc_cs, info);
	return;

out_copy:
	if (info->nand.options & NAND_BUSWIDTH_16)
		FUNC6(mtd, buf, len);
	else
		FUNC7(mtd, buf, len);
}