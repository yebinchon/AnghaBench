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
struct page {int dummy; } ;
struct mmc_test_mem {size_t cnt; TYPE_1__* arr; } ;
typedef  int gfp_t ;
struct TYPE_2__ {unsigned int order; struct page* page; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 struct page* FUNC1 (int,unsigned int) ; 
 unsigned int FUNC2 (unsigned long) ; 
 TYPE_1__* FUNC3 (unsigned int,int,int) ; 
 struct mmc_test_mem* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_test_mem*) ; 
 int FUNC6 () ; 

__attribute__((used)) static struct mmc_test_mem *FUNC7(unsigned long min_sz,
					       unsigned long max_sz,
					       unsigned int max_segs,
					       unsigned int max_seg_sz)
{
	unsigned long max_page_cnt = FUNC0(max_sz, PAGE_SIZE);
	unsigned long min_page_cnt = FUNC0(min_sz, PAGE_SIZE);
	unsigned long max_seg_page_cnt = FUNC0(max_seg_sz, PAGE_SIZE);
	unsigned long page_cnt = 0;
	unsigned long limit = FUNC6() >> 4;
	struct mmc_test_mem *mem;

	if (max_page_cnt > limit)
		max_page_cnt = limit;
	if (min_page_cnt > max_page_cnt)
		min_page_cnt = max_page_cnt;

	if (max_seg_page_cnt > max_page_cnt)
		max_seg_page_cnt = max_page_cnt;

	if (max_segs > max_page_cnt)
		max_segs = max_page_cnt;

	mem = FUNC4(sizeof(*mem), GFP_KERNEL);
	if (!mem)
		return NULL;

	mem->arr = FUNC3(max_segs, sizeof(*mem->arr), GFP_KERNEL);
	if (!mem->arr)
		goto out_free;

	while (max_page_cnt) {
		struct page *page;
		unsigned int order;
		gfp_t flags = GFP_KERNEL | GFP_DMA | __GFP_NOWARN |
				__GFP_NORETRY;

		order = FUNC2(max_seg_page_cnt << PAGE_SHIFT);
		while (1) {
			page = FUNC1(flags, order);
			if (page || !order)
				break;
			order -= 1;
		}
		if (!page) {
			if (page_cnt < min_page_cnt)
				goto out_free;
			break;
		}
		mem->arr[mem->cnt].page = page;
		mem->arr[mem->cnt].order = order;
		mem->cnt += 1;
		if (max_page_cnt <= (1UL << order))
			break;
		max_page_cnt -= 1UL << order;
		page_cnt += 1UL << order;
		if (mem->cnt >= max_segs) {
			if (page_cnt < min_page_cnt)
				goto out_free;
			break;
		}
	}

	return mem;

out_free:
	FUNC5(mem);
	return NULL;
}