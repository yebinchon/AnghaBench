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
struct swap_eb {int /*<<< orphan*/ * root; int /*<<< orphan*/  flags; } ;
struct mtdswap_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  mtd; int /*<<< orphan*/  spare_eblks; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBLOCK_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtdswap_dev*,struct swap_eb*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtdswap_dev*,struct swap_eb*) ; 

__attribute__((used)) static int FUNC5(struct mtdswap_dev *d, struct swap_eb *eb)
{
	int ret;
	loff_t offset;

	d->spare_eblks--;
	eb->flags |= EBLOCK_BAD;
	FUNC3(d, eb);
	eb->root = NULL;

	/* badblocks not supported */
	if (!FUNC2(d->mtd))
		return 1;

	offset = FUNC4(d, eb);
	FUNC0(d->dev, "Marking bad block at %08llx\n", offset);
	ret = FUNC1(d->mtd, offset);

	if (ret) {
		FUNC0(d->dev, "Mark block bad failed for block at %08llx "
			"error %d\n", offset, ret);
		return ret;
	}

	return 1;

}