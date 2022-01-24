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
struct mtdswap_dev {unsigned int* page_data; unsigned int pages_per_eblk; scalar_t__* revmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  mtd_read_count; struct swap_eb* eb_data; int /*<<< orphan*/  sect_read_count; struct mtd_info* mtd; } ;
struct mtd_info {int dummy; } ;
struct mtd_blktrans_dev {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 unsigned int BLOCK_MAX ; 
 unsigned int BLOCK_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EBLOCK_BITFLIP ; 
 int /*<<< orphan*/  EBLOCK_READERR ; 
 int EIO ; 
 int /*<<< orphan*/  MTDSWAP_BITFLIP ; 
 int /*<<< orphan*/  MTDSWAP_FAILING ; 
 unsigned int MTDSWAP_IO_RETRIES ; 
 struct mtdswap_dev* FUNC1 (struct mtd_blktrans_dev*) ; 
 int PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 scalar_t__ PAGE_UNDEF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ header ; 
 int /*<<< orphan*/  FUNC3 (char*,int,size_t) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct mtd_info*,int,size_t,size_t*,char*) ; 
 int FUNC6 (struct mtdswap_dev*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtdswap_dev*,struct swap_eb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct mtd_blktrans_dev *dev,
			unsigned long page, char *buf)
{
	struct mtdswap_dev *d = FUNC1(dev);
	struct mtd_info *mtd = d->mtd;
	unsigned int realblock, retries;
	loff_t readpos;
	struct swap_eb *eb;
	size_t retlen;
	int ret;

	d->sect_read_count++;

	if (header) {
		if (FUNC8(page == 0))
			return FUNC6(d, buf);

		page--;
	}

	realblock = d->page_data[page];
	if (realblock > BLOCK_MAX) {
		FUNC3(buf, 0x0, PAGE_SIZE);
		if (realblock == BLOCK_UNDEF)
			return 0;
		else
			return -EIO;
	}

	eb = d->eb_data + (realblock / d->pages_per_eblk);
	FUNC0(d->revmap[realblock] == PAGE_UNDEF);

	readpos = (loff_t)realblock << PAGE_SHIFT;
	retries = 0;

retry:
	ret = FUNC5(mtd, readpos, PAGE_SIZE, &retlen, buf);

	d->mtd_read_count++;
	if (FUNC4(ret)) {
		eb->flags |= EBLOCK_BITFLIP;
		FUNC7(d, eb, MTDSWAP_BITFLIP);
		ret = 0;
	}

	if (ret < 0) {
		FUNC2(d->dev, "Read error %d\n", ret);
		eb->flags |= EBLOCK_READERR;
		FUNC7(d, eb, MTDSWAP_FAILING);
		retries++;
		if (retries < MTDSWAP_IO_RETRIES)
			goto retry;

		return ret;
	}

	if (retlen != PAGE_SIZE) {
		FUNC2(d->dev, "Short read %zd\n", retlen);
		return -EIO;
	}

	return 0;
}