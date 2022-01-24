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
typedef  size_t u16 ;
struct scatterlist {int dummy; } ;
struct msb_data {size_t cache_block_lba; size_t* lba_to_pba_table; int pages_in_block; int page_size; int /*<<< orphan*/  valid_cache_bitmap; int /*<<< orphan*/  block_size; int /*<<< orphan*/  cache; scalar_t__ read_only; } ;
struct ms_extra_data_register {int overwrite_flag; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EROFS ; 
 int MEMSTICK_OV_PG_NORMAL ; 
 size_t MS_BLOCK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct msb_data*) ; 
 int FUNC3 (struct msb_data*,size_t,int,struct ms_extra_data_register*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct msb_data*,size_t,int,int) ; 
 int FUNC5 (struct msb_data*,size_t,struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct msb_data *msb)
{
	struct scatterlist sg;
	struct ms_extra_data_register extra;
	int page, offset, error;
	u16 pba, lba;

	if (msb->read_only)
		return -EROFS;

	if (msb->cache_block_lba == MS_BLOCK_INVALID)
		return 0;

	lba = msb->cache_block_lba;
	pba = msb->lba_to_pba_table[lba];

	FUNC1("Flushing the write cache of pba %d (LBA %d)",
						pba, msb->cache_block_lba);

	FUNC8(&sg, msb->cache , msb->block_size);

	/* Read all missing pages in cache */
	for (page = 0; page < msb->pages_in_block; page++) {

		if (FUNC9(page, &msb->valid_cache_bitmap))
			continue;

		offset = page * msb->page_size;

		FUNC1("reading non-present sector %d of cache block %d",
			page, lba);
		error = FUNC3(msb, pba, page, &extra, &sg, offset);

		/* Bad pages are copied with 00 page status */
		if (error == -EBADMSG) {
			FUNC6("read error on sector %d, contents probably damaged", page);
			continue;
		}

		if (error)
			return error;

		if ((extra.overwrite_flag & MEMSTICK_OV_PG_NORMAL) !=
							MEMSTICK_OV_PG_NORMAL) {
			FUNC0("page %d is marked as bad", page);
			continue;
		}

		FUNC7(page, &msb->valid_cache_bitmap);
	}

	/* Write the cache now */
	error = FUNC5(msb, msb->cache_block_lba, &sg, 0);
	pba = msb->lba_to_pba_table[msb->cache_block_lba];

	/* Mark invalid pages */
	if (!error) {
		for (page = 0; page < msb->pages_in_block; page++) {

			if (FUNC9(page, &msb->valid_cache_bitmap))
				continue;

			FUNC0("marking page %d as containing damaged data",
				page);
			FUNC4(msb,
				pba , page, 0xFF & ~MEMSTICK_OV_PG_NORMAL);
		}
	}

	FUNC2(msb);
	return error;
}