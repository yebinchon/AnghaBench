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
struct TYPE_2__ {struct mtd_info* mtd; } ;
struct mtdblk_dev {unsigned int cache_size; scalar_t__ cache_state; unsigned long cache_offset; int /*<<< orphan*/  cache_data; TYPE_1__ mbd; } ;
struct mtd_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ STATE_CLEAN ; 
 scalar_t__ STATE_DIRTY ; 
 scalar_t__ STATE_EMPTY ; 
 int FUNC0 (struct mtd_info*,unsigned long,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int FUNC2 (struct mtd_info*,unsigned long,unsigned int,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtd_info*,unsigned long,int,size_t*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int FUNC5 (struct mtdblk_dev*) ; 

__attribute__((used)) static int FUNC6 (struct mtdblk_dev *mtdblk, unsigned long pos,
			    int len, const char *buf)
{
	struct mtd_info *mtd = mtdblk->mbd.mtd;
	unsigned int sect_size = mtdblk->cache_size;
	size_t retlen;
	int ret;

	FUNC4("mtdblock: write on \"%s\" at 0x%lx, size 0x%x\n",
		mtd->name, pos, len);

	if (!sect_size)
		return FUNC3(mtd, pos, len, &retlen, buf);

	while (len > 0) {
		unsigned long sect_start = (pos/sect_size)*sect_size;
		unsigned int offset = pos - sect_start;
		unsigned int size = sect_size - offset;
		if( size > len )
			size = len;

		if (size == sect_size) {
			/*
			 * We are covering a whole sector.  Thus there is no
			 * need to bother with the cache while it may still be
			 * useful for other partial writes.
			 */
			ret = FUNC0 (mtd, pos, size, buf);
			if (ret)
				return ret;
		} else {
			/* Partial sector: need to use the cache */

			if (mtdblk->cache_state == STATE_DIRTY &&
			    mtdblk->cache_offset != sect_start) {
				ret = FUNC5(mtdblk);
				if (ret)
					return ret;
			}

			if (mtdblk->cache_state == STATE_EMPTY ||
			    mtdblk->cache_offset != sect_start) {
				/* fill the cache with the current sector */
				mtdblk->cache_state = STATE_EMPTY;
				ret = FUNC2(mtd, sect_start, sect_size,
					       &retlen, mtdblk->cache_data);
				if (ret)
					return ret;
				if (retlen != sect_size)
					return -EIO;

				mtdblk->cache_offset = sect_start;
				mtdblk->cache_size = sect_size;
				mtdblk->cache_state = STATE_CLEAN;
			}

			/* write data to our local cache */
			FUNC1 (mtdblk->cache_data + offset, buf, size);
			mtdblk->cache_state = STATE_DIRTY;
		}

		buf += size;
		pos += size;
		len -= size;
	}

	return 0;
}