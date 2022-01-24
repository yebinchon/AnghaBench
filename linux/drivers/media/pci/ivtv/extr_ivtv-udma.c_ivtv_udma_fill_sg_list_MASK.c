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
struct ivtv_user_dma {int /*<<< orphan*/ ** map; int /*<<< orphan*/ * SGlist; int /*<<< orphan*/ ** bouncemap; } ;
struct ivtv_dma_page_info {int offset; int page_count; int tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int) ; 

int FUNC9 (struct ivtv_user_dma *dma, struct ivtv_dma_page_info *dma_page, int map_offset)
{
	int i, offset;
	unsigned long flags;

	if (map_offset < 0)
		return map_offset;

	offset = dma_page->offset;

	/* Fill SG Array with new values */
	for (i = 0; i < dma_page->page_count; i++) {
		unsigned int len = (i == dma_page->page_count - 1) ?
			dma_page->tail : PAGE_SIZE - offset;

		if (FUNC0(dma->map[map_offset])) {
			void *src;

			if (dma->bouncemap[map_offset] == NULL)
				dma->bouncemap[map_offset] = FUNC1(GFP_KERNEL);
			if (dma->bouncemap[map_offset] == NULL)
				return -1;
			FUNC5(flags);
			src = FUNC2(dma->map[map_offset]) + offset;
			FUNC6(FUNC7(dma->bouncemap[map_offset]) + offset, src, len);
			FUNC3(src);
			FUNC4(flags);
			FUNC8(&dma->SGlist[map_offset], dma->bouncemap[map_offset], len, offset);
		}
		else {
			FUNC8(&dma->SGlist[map_offset], dma->map[map_offset], len, offset);
		}
		offset = 0;
		map_offset++;
	}
	return map_offset;
}