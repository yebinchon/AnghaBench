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
struct swap_eb {scalar_t__ erase_count; } ;
struct mtdswap_dev {scalar_t__ max_erase_count; int /*<<< orphan*/  dev; struct mtd_info* mtd; } ;
struct mtd_info {int /*<<< orphan*/  name; int /*<<< orphan*/  erasesize; } ;
struct erase_info {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MTDSWAP_ERASE_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct erase_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mtd_info*,struct erase_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtdswap_dev*,struct swap_eb*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtdswap_dev*,struct swap_eb*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct mtdswap_dev *d, struct swap_eb *eb)
{
	struct mtd_info *mtd = d->mtd;
	struct erase_info erase;
	unsigned int retries = 0;
	int ret;

	eb->erase_count++;
	if (eb->erase_count > d->max_erase_count)
		d->max_erase_count = eb->erase_count;

retry:
	FUNC2(&erase, 0, sizeof(struct erase_info));
	erase.addr	= FUNC4(d, eb);
	erase.len	= mtd->erasesize;

	ret = FUNC3(mtd, &erase);
	if (ret) {
		if (retries++ < MTDSWAP_ERASE_RETRIES) {
			FUNC1(d->dev,
				"erase of erase block %#llx on %s failed",
				erase.addr, mtd->name);
			FUNC6();
			goto retry;
		}

		FUNC0(d->dev, "Cannot erase erase block %#llx on %s\n",
			erase.addr, mtd->name);

		FUNC5(d, eb);
		return -EIO;
	}

	return 0;
}