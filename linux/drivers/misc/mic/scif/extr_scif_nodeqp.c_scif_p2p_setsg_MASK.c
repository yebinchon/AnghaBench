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
struct page {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 struct scatterlist* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,struct page*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct scatterlist *
FUNC4(phys_addr_t pa, int page_size, int page_cnt)
{
	struct scatterlist *sg;
	struct page *page;
	int i;

	sg = FUNC0(page_cnt, sizeof(struct scatterlist), GFP_KERNEL);
	if (!sg)
		return NULL;
	FUNC2(sg, page_cnt);
	for (i = 0; i < page_cnt; i++) {
		page = FUNC1(pa >> PAGE_SHIFT);
		FUNC3(&sg[i], page, page_size, 0);
		pa += page_size;
	}
	return sg;
}