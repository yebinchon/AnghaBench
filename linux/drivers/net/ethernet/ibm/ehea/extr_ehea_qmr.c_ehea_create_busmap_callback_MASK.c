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

/* Variables and functions */
 int /*<<< orphan*/  EHEA_BUSMAP_ADD_SECT ; 
 unsigned long EHEA_HUGEPAGE_SIZE ; 
 unsigned long EHEA_SECTSIZE ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(unsigned long initial_pfn,
				       unsigned long total_nr_pages, void *arg)
{
	int ret;
	unsigned long pfn, start_pfn, end_pfn, nr_pages;

	if ((total_nr_pages * PAGE_SIZE) < EHEA_HUGEPAGE_SIZE)
		return FUNC1(initial_pfn, total_nr_pages,
					  EHEA_BUSMAP_ADD_SECT);

	/* Given chunk is >= 16GB -> check for hugepages */
	start_pfn = initial_pfn;
	end_pfn = initial_pfn + total_nr_pages;
	pfn = start_pfn;

	while (pfn < end_pfn) {
		if (FUNC0(pfn)) {
			/* Add mem found in front of the hugepage */
			nr_pages = pfn - start_pfn;
			ret = FUNC1(start_pfn, nr_pages,
						 EHEA_BUSMAP_ADD_SECT);
			if (ret)
				return ret;

			/* Skip the hugepage */
			pfn += (EHEA_HUGEPAGE_SIZE / PAGE_SIZE);
			start_pfn = pfn;
		} else
			pfn += (EHEA_SECTSIZE / PAGE_SIZE);
	}

	/* Add mem found behind the hugepage(s)  */
	nr_pages = pfn - start_pfn;
	return FUNC1(start_pfn, nr_pages, EHEA_BUSMAP_ADD_SECT);
}