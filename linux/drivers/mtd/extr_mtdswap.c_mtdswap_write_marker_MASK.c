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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ u16 ;
struct swap_eb {int /*<<< orphan*/  erase_count; } ;
struct mtdswap_oobdata {void* magic; int /*<<< orphan*/  count; } ;
struct mtdswap_dev {int /*<<< orphan*/  dev; TYPE_1__* mtd; } ;
struct mtd_oob_ops {int ooblen; int oobretlen; int /*<<< orphan*/ * datbuf; int /*<<< orphan*/  mode; int /*<<< orphan*/ * oobbuf; scalar_t__ ooboffs; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ writesize; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MTDSWAP_MAGIC_CLEAN ; 
 int /*<<< orphan*/  MTDSWAP_MAGIC_DIRTY ; 
 int MTDSWAP_OOBSIZE ; 
 scalar_t__ MTDSWAP_TYPE_CLEAN ; 
 int /*<<< orphan*/  MTD_OPS_AUTO_OOB ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,scalar_t__,struct mtd_oob_ops*) ; 
 scalar_t__ FUNC5 (struct mtdswap_dev*,struct swap_eb*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtdswap_dev*,struct swap_eb*) ; 

__attribute__((used)) static int FUNC7(struct mtdswap_dev *d, struct swap_eb *eb,
				u16 marker)
{
	struct mtdswap_oobdata n;
	int ret;
	loff_t offset;
	struct mtd_oob_ops ops;

	ops.ooboffs = 0;
	ops.oobbuf = (uint8_t *)&n;
	ops.mode = MTD_OPS_AUTO_OOB;
	ops.datbuf = NULL;

	if (marker == MTDSWAP_TYPE_CLEAN) {
		n.magic = FUNC0(MTDSWAP_MAGIC_CLEAN);
		n.count = FUNC1(eb->erase_count);
		ops.ooblen = MTDSWAP_OOBSIZE;
		offset = FUNC5(d, eb);
	} else {
		n.magic = FUNC0(MTDSWAP_MAGIC_DIRTY);
		ops.ooblen = sizeof(n.magic);
		offset = FUNC5(d, eb) + d->mtd->writesize;
	}

	ret = FUNC4(d->mtd, offset, &ops);

	if (ret) {
		FUNC2(d->dev, "Write OOB failed for block at %08llx "
			"error %d\n", offset, ret);
		if (ret == -EIO || FUNC3(ret))
			FUNC6(d, eb);
		return ret;
	}

	if (ops.oobretlen != ops.ooblen) {
		FUNC2(d->dev, "Short OOB write for block at %08llx: "
			"%zd not %zd\n",
			offset, ops.oobretlen, ops.ooblen);
		return ret;
	}

	return 0;
}