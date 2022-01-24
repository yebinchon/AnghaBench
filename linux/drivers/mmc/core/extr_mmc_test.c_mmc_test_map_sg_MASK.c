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
struct scatterlist {int dummy; } ;
struct mmc_test_mem {unsigned int cnt; TYPE_1__* arr; } ;
struct TYPE_2__ {unsigned long order; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 int EINVAL ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mmc_test_mem *mem, unsigned long size,
			   struct scatterlist *sglist, int repeat,
			   unsigned int max_segs, unsigned int max_seg_sz,
			   unsigned int *sg_len, int min_sg_len)
{
	struct scatterlist *sg = NULL;
	unsigned int i;
	unsigned long sz = size;

	FUNC1(sglist, max_segs);
	if (min_sg_len > max_segs)
		min_sg_len = max_segs;

	*sg_len = 0;
	do {
		for (i = 0; i < mem->cnt; i++) {
			unsigned long len = PAGE_SIZE << mem->arr[i].order;

			if (min_sg_len && (size / min_sg_len < len))
				len = FUNC0(size / min_sg_len, 512);
			if (len > sz)
				len = sz;
			if (len > max_seg_sz)
				len = max_seg_sz;
			if (sg)
				sg = FUNC3(sg);
			else
				sg = sglist;
			if (!sg)
				return -EINVAL;
			FUNC4(sg, mem->arr[i].page, len, 0);
			sz -= len;
			*sg_len += 1;
			if (!sz)
				break;
		}
	} while (sz && repeat);

	if (sz)
		return -EINVAL;

	if (sg)
		FUNC2(sg);

	return 0;
}