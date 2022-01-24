#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct swap_eb {int /*<<< orphan*/  flags; int /*<<< orphan*/  erase_count; } ;
struct mtdswap_oobdata {int /*<<< orphan*/  magic; int /*<<< orphan*/  count; } ;
struct mtdswap_dev {TYPE_1__* mtd; scalar_t__ oob_buf; } ;
struct mtd_oob_ops {int ooblen; int /*<<< orphan*/  mode; int /*<<< orphan*/ * datbuf; scalar_t__ ooboffs; scalar_t__ oobbuf; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {int oobavail; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBLOCK_NOMAGIC ; 
 scalar_t__ MTDSWAP_MAGIC_CLEAN ; 
 scalar_t__ MTDSWAP_MAGIC_DIRTY ; 
 int MTDSWAP_SCANNED_BAD ; 
 int MTDSWAP_SCANNED_BITFLIP ; 
 int MTDSWAP_SCANNED_CLEAN ; 
 int MTDSWAP_SCANNED_DIRTY ; 
 int /*<<< orphan*/  MTD_OPS_AUTO_OOB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtdswap_dev*,struct swap_eb*) ; 
 int FUNC6 (struct mtdswap_dev*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 

__attribute__((used)) static int FUNC7(struct mtdswap_dev *d, struct swap_eb *eb)
{
	struct mtdswap_oobdata *data, *data2;
	int ret;
	loff_t offset;
	struct mtd_oob_ops ops;

	offset = FUNC5(d, eb);

	/* Check first if the block is bad. */
	if (FUNC3(d->mtd) && FUNC2(d->mtd, offset))
		return MTDSWAP_SCANNED_BAD;

	ops.ooblen = 2 * d->mtd->oobavail;
	ops.oobbuf = d->oob_buf;
	ops.ooboffs = 0;
	ops.datbuf = NULL;
	ops.mode = MTD_OPS_AUTO_OOB;

	ret = FUNC6(d, offset, &ops);

	if (ret && !FUNC4(ret))
		return ret;

	data = (struct mtdswap_oobdata *)d->oob_buf;
	data2 = (struct mtdswap_oobdata *)
		(d->oob_buf + d->mtd->oobavail);

	if (FUNC0(data->magic) == MTDSWAP_MAGIC_CLEAN) {
		eb->erase_count = FUNC1(data->count);
		if (FUNC4(ret))
			ret = MTDSWAP_SCANNED_BITFLIP;
		else {
			if (FUNC0(data2->magic) == MTDSWAP_MAGIC_DIRTY)
				ret = MTDSWAP_SCANNED_DIRTY;
			else
				ret = MTDSWAP_SCANNED_CLEAN;
		}
	} else {
		eb->flags |= EBLOCK_NOMAGIC;
		ret = MTDSWAP_SCANNED_DIRTY;
	}

	return ret;
}