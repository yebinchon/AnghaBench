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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 struct page* FUNC6 (unsigned char*) ; 
 struct scatterlist* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct scatterlist *FUNC8(unsigned char *virt,
						  int nr_pages)
{
	struct scatterlist *sglist;
	struct page *pg;
	int i;

	sglist = FUNC7(FUNC2(nr_pages, sizeof(*sglist)));
	if (NULL == sglist)
		return NULL;
	FUNC3(sglist, nr_pages);
	for (i = 0; i < nr_pages; i++, virt += PAGE_SIZE) {
		pg = FUNC6(virt);
		if (NULL == pg)
			goto err;
		FUNC0(FUNC1(pg));
		FUNC4(&sglist[i], pg, PAGE_SIZE, 0);
	}
	return sglist;

err:
	FUNC5(sglist);
	return NULL;
}