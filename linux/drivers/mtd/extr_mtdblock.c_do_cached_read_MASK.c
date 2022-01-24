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
struct mtdblk_dev {unsigned int cache_size; scalar_t__ cache_state; unsigned long cache_offset; scalar_t__ cache_data; TYPE_1__ mbd; } ;
struct mtd_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ STATE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,unsigned int) ; 
 int FUNC1 (struct mtd_info*,unsigned long,unsigned int,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long,int) ; 

__attribute__((used)) static int FUNC3 (struct mtdblk_dev *mtdblk, unsigned long pos,
			   int len, char *buf)
{
	struct mtd_info *mtd = mtdblk->mbd.mtd;
	unsigned int sect_size = mtdblk->cache_size;
	size_t retlen;
	int ret;

	FUNC2("mtdblock: read on \"%s\" at 0x%lx, size 0x%x\n",
			mtd->name, pos, len);

	if (!sect_size)
		return FUNC1(mtd, pos, len, &retlen, buf);

	while (len > 0) {
		unsigned long sect_start = (pos/sect_size)*sect_size;
		unsigned int offset = pos - sect_start;
		unsigned int size = sect_size - offset;
		if (size > len)
			size = len;

		/*
		 * Check if the requested data is already cached
		 * Read the requested amount of data from our internal cache if it
		 * contains what we want, otherwise we read the data directly
		 * from flash.
		 */
		if (mtdblk->cache_state != STATE_EMPTY &&
		    mtdblk->cache_offset == sect_start) {
			FUNC0 (buf, mtdblk->cache_data + offset, size);
		} else {
			ret = FUNC1(mtd, pos, size, &retlen, buf);
			if (ret)
				return ret;
			if (retlen != size)
				return -EIO;
		}

		buf += size;
		pos += size;
		len -= size;
	}

	return 0;
}