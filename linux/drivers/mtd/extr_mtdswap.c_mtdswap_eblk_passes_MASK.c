#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct swap_eb {int /*<<< orphan*/  flags; } ;
struct mtdswap_dev {unsigned int pages_per_eblk; scalar_t__ oob_buf; scalar_t__ page_buf; struct mtd_info* mtd; } ;
struct mtd_oob_ops {unsigned int len; unsigned int ooblen; scalar_t__ oobbuf; scalar_t__ datbuf; scalar_t__ ooboffs; int /*<<< orphan*/  mode; } ;
struct mtd_info {unsigned int writesize; unsigned int oobavail; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBLOCK_READERR ; 
 int /*<<< orphan*/  MTD_OPS_AUTO_OOB ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned int,unsigned int) ; 
 int FUNC1 (struct mtd_info*,unsigned int,struct mtd_oob_ops*) ; 
 int FUNC2 (struct mtd_info*,unsigned int,struct mtd_oob_ops*) ; 
 unsigned int FUNC3 (struct mtdswap_dev*,struct swap_eb*) ; 
 int FUNC4 (struct mtdswap_dev*,struct swap_eb*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtdswap_dev*,struct swap_eb*) ; 
 unsigned int FUNC6 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC7(struct mtdswap_dev *d,
					struct swap_eb *eb)
{
	struct mtd_info *mtd = d->mtd;
	unsigned int test, i, j, patt, mtd_pages;
	loff_t base, pos;
	unsigned int *p1 = (unsigned int *)d->page_buf;
	unsigned char *p2 = (unsigned char *)d->oob_buf;
	struct mtd_oob_ops ops;
	int ret;

	ops.mode = MTD_OPS_AUTO_OOB;
	ops.len = mtd->writesize;
	ops.ooblen = mtd->oobavail;
	ops.ooboffs = 0;
	ops.datbuf = d->page_buf;
	ops.oobbuf = d->oob_buf;
	base = FUNC3(d, eb);
	mtd_pages = d->pages_per_eblk * PAGE_SIZE / mtd->writesize;

	for (test = 0; test < 2; test++) {
		pos = base;
		for (i = 0; i < mtd_pages; i++) {
			patt = FUNC6(test + i);
			FUNC0(d->page_buf, patt, mtd->writesize);
			FUNC0(d->oob_buf, patt, mtd->oobavail);
			ret = FUNC2(mtd, pos, &ops);
			if (ret)
				goto error;

			pos += mtd->writesize;
		}

		pos = base;
		for (i = 0; i < mtd_pages; i++) {
			ret = FUNC1(mtd, pos, &ops);
			if (ret)
				goto error;

			patt = FUNC6(test + i);
			for (j = 0; j < mtd->writesize/sizeof(int); j++)
				if (p1[j] != patt)
					goto error;

			for (j = 0; j < mtd->oobavail; j++)
				if (p2[j] != (unsigned char)patt)
					goto error;

			pos += mtd->writesize;
		}

		ret = FUNC4(d, eb);
		if (ret)
			goto error;
	}

	eb->flags &= ~EBLOCK_READERR;
	return 1;

error:
	FUNC5(d, eb);
	return 0;
}