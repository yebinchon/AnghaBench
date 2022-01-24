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
struct scatterlist {int dummy; } ;
struct msb_data {int cache_block_lba; int page_size; int /*<<< orphan*/  valid_cache_bitmap; scalar_t__ cache; int /*<<< orphan*/  cache_flush_timer; scalar_t__ read_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int EROFS ; 
 int MS_BLOCK_INVALID ; 
 int /*<<< orphan*/  cache_flush_timeout ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (struct msb_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,struct scatterlist*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC10(struct msb_data *msb, int lba,
	int page, bool add_to_cache_only, struct scatterlist *sg, int offset)
{
	int error;
	struct scatterlist sg_tmp[10];

	if (msb->read_only)
		return -EROFS;

	if (msb->cache_block_lba == MS_BLOCK_INVALID ||
						lba != msb->cache_block_lba)
		if (add_to_cache_only)
			return 0;

	/* If we need to write different block */
	if (msb->cache_block_lba != MS_BLOCK_INVALID &&
						lba != msb->cache_block_lba) {
		FUNC1("first flush the cache");
		error = FUNC3(msb);
		if (error)
			return error;
	}

	if (msb->cache_block_lba  == MS_BLOCK_INVALID) {
		msb->cache_block_lba  = lba;
		FUNC2(&msb->cache_flush_timer,
			jiffies + FUNC5(cache_flush_timeout));
	}

	FUNC1("Write of LBA %d page %d to cache ", lba, page);

	FUNC8(sg_tmp, FUNC0(sg_tmp));
	FUNC4(sg, sg_tmp, FUNC0(sg_tmp), offset, msb->page_size);

	FUNC7(sg_tmp, FUNC9(sg_tmp),
		msb->cache + page * msb->page_size, msb->page_size);

	FUNC6(page, &msb->valid_cache_bitmap);
	return 0;
}