#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u_long ;
struct page {int dummy; } ;
struct block2mtd_dev {TYPE_2__* blkdev; } ;
struct address_space {int dummy; } ;
typedef  size_t loff_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 size_t PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,int,int) ; 
 unsigned long* FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct block2mtd_dev *dev, loff_t to, size_t len)
{
	struct address_space *mapping = dev->blkdev->bd_inode->i_mapping;
	struct page *page;
	int index = to >> PAGE_SHIFT;	// page index
	int pages = len >> PAGE_SHIFT;
	u_long *p;
	u_long *max;

	while (pages) {
		page = FUNC6(mapping, index);
		if (FUNC0(page))
			return FUNC1(page);

		max = FUNC5(page) + PAGE_SIZE;
		for (p=FUNC5(page); p<max; p++)
			if (*p != -1UL) {
				FUNC3(page);
				FUNC4(FUNC5(page), 0xff, PAGE_SIZE);
				FUNC8(page);
				FUNC9(page);
				FUNC2(mapping);
				break;
			}

		FUNC7(page);
		pages--;
		index++;
	}
	return 0;
}