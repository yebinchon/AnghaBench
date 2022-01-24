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
struct msb_data {int* lba_to_pba_table; int cache_block_lba; int page_size; scalar_t__ cache; int /*<<< orphan*/  valid_cache_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msb_data*,int,int,int,struct scatterlist*,int) ; 
 int FUNC3 (struct msb_data*,int,int,int /*<<< orphan*/ *,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,struct scatterlist*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct msb_data *msb, int lba,
				int page, struct scatterlist *sg, int offset)
{
	int pba = msb->lba_to_pba_table[lba];
	struct scatterlist sg_tmp[10];
	int error = 0;

	if (lba == msb->cache_block_lba &&
			FUNC8(page, &msb->valid_cache_bitmap)) {

		FUNC1("Read of LBA %d (pba %d) sector %d from cache",
							lba, pba, page);

		FUNC6(sg_tmp, FUNC0(sg_tmp));
		FUNC4(sg, sg_tmp, FUNC0(sg_tmp),
			offset, msb->page_size);
		FUNC5(sg_tmp, FUNC7(sg_tmp),
			msb->cache + msb->page_size * page,
							msb->page_size);
	} else {
		FUNC1("Read of LBA %d (pba %d) sector %d from device",
							lba, pba, page);

		error = FUNC3(msb, pba, page, NULL, sg, offset);
		if (error)
			return error;

		FUNC2(msb, lba, page, true, sg, offset);
	}
	return error;
}