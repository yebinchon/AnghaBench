#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int options; } ;
struct TYPE_3__ {int /*<<< orphan*/  gpmc_prefetch_status; } ;
struct omap_nand_info {int buf_len; TYPE_2__ nand; int /*<<< orphan*/  gpmc_cs; TYPE_1__ reg; int /*<<< orphan*/  comp; int /*<<< orphan*/  gpmc_irq_fifo; int /*<<< orphan*/  gpmc_irq_count; int /*<<< orphan*/ * buf; int /*<<< orphan*/  iomode; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
 int /*<<< orphan*/  OMAP_NAND_IO_WRITE ; 
 int /*<<< orphan*/  OMAP_NAND_TIMEOUT_MS ; 
 int PREFETCH_FIFOTHRESHOLD_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long loops_per_jiffy ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 struct omap_nand_info* FUNC5 (struct mtd_info*) ; 
 struct mtd_info* FUNC6 (struct nand_chip*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int,int,int,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct omap_nand_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtd_info*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mtd_info*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct nand_chip *chip, const u_char *buf,
				    int len)
{
	struct mtd_info *mtd = FUNC6(chip);
	struct omap_nand_info *info = FUNC5(mtd);
	int ret = 0;
	unsigned long tim, limit;
	u32 val;

	if (len <= mtd->oobsize) {
		FUNC11(chip, buf, len);
		return;
	}

	info->iomode = OMAP_NAND_IO_WRITE;
	info->buf = (u_char *) buf;
	FUNC3(&info->comp);

	/* configure and start prefetch transfer : size=24 */
	ret = FUNC7(info->gpmc_cs,
		(PREFETCH_FIFOTHRESHOLD_MAX * 3) / 8, 0x0, len, 0x1, info);
	if (ret)
		/* PFPW engine is busy, use cpu copy method */
		goto out_copy;

	info->buf_len = len;

	FUNC2(info->gpmc_irq_count);
	FUNC2(info->gpmc_irq_fifo);

	/* waiting for write to complete */
	FUNC13(&info->comp);

	/* wait for data to flushed-out before reset the prefetch */
	tim = 0;
	limit = (loops_per_jiffy *  FUNC4(OMAP_NAND_TIMEOUT_MS));
	do {
		val = FUNC12(info->reg.gpmc_prefetch_status);
		val = FUNC0(val);
		FUNC1();
	} while (val && (tim++ < limit));

	/* disable and stop the PFPW engine */
	FUNC8(info->gpmc_cs, info);
	return;

out_copy:
	if (info->nand.options & NAND_BUSWIDTH_16)
		FUNC9(mtd, buf, len);
	else
		FUNC10(mtd, buf, len);
}