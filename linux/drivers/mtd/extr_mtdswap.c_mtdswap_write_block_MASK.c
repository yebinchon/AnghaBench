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
struct swap_eb {int /*<<< orphan*/  active_count; } ;
struct mtdswap_dev {unsigned int pages_per_eblk; void** revmap; int /*<<< orphan*/  curr_write_pos; int /*<<< orphan*/  dev; int /*<<< orphan*/ * curr_write; struct swap_eb* eb_data; struct mtd_info* mtd; } ;
struct mtd_info {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 int PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 void* PAGE_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct mtd_info*,int,size_t,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtdswap_dev*) ; 
 scalar_t__ FUNC4 (struct mtdswap_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtdswap_dev*,struct swap_eb*) ; 
 int FUNC6 (struct mtdswap_dev*,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct mtdswap_dev *d, char *buf,
			unsigned int page, unsigned int *bp, int gc_context)
{
	struct mtd_info *mtd = d->mtd;
	struct swap_eb *eb;
	size_t retlen;
	loff_t writepos;
	int ret;

retry:
	if (!gc_context)
		while (!FUNC3(d))
			if (FUNC4(d, 0) > 0)
				return -ENOSPC;

	ret = FUNC6(d, page, bp);
	eb = d->eb_data + (*bp / d->pages_per_eblk);

	if (ret == -EIO || FUNC1(ret)) {
		d->curr_write = NULL;
		eb->active_count--;
		d->revmap[*bp] = PAGE_UNDEF;
		goto retry;
	}

	if (ret < 0)
		return ret;

	writepos = (loff_t)*bp << PAGE_SHIFT;
	ret =  FUNC2(mtd, writepos, PAGE_SIZE, &retlen, buf);
	if (ret == -EIO || FUNC1(ret)) {
		d->curr_write_pos--;
		eb->active_count--;
		d->revmap[*bp] = PAGE_UNDEF;
		FUNC5(d, eb);
		goto retry;
	}

	if (ret < 0) {
		FUNC0(d->dev, "Write to MTD device failed: %d (%zd written)",
			ret, retlen);
		goto err;
	}

	if (retlen != PAGE_SIZE) {
		FUNC0(d->dev, "Short write to MTD device: %zd written",
			retlen);
		ret = -EIO;
		goto err;
	}

	return ret;

err:
	d->curr_write_pos--;
	eb->active_count--;
	d->revmap[*bp] = PAGE_UNDEF;

	return ret;
}