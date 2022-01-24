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
typedef  int /*<<< orphan*/  u_char ;
struct docg3 {scalar_t__ max_block; int /*<<< orphan*/ * bbt; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int DOC_LAYOUT_BLOCK_BBT ; 
 scalar_t__ DOC_LAYOUT_PAGE_BBT ; 
 int DOC_LAYOUT_PAGE_SIZE ; 
 int FUNC1 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct docg3*,int,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct docg3 *docg3)
{
	int block = DOC_LAYOUT_BLOCK_BBT;
	int ret = 0, nbpages, page;
	u_char *buf = docg3->bbt;

	nbpages = FUNC0(docg3->max_block + 1, 8 * DOC_LAYOUT_PAGE_SIZE);
	for (page = 0; !ret && (page < nbpages); page++) {
		ret = FUNC4(docg3, block, block + 1,
					    page + DOC_LAYOUT_PAGE_BBT, 0);
		if (!ret)
			ret = FUNC1(docg3,
						     DOC_LAYOUT_PAGE_SIZE);
		if (!ret)
			FUNC3(docg3, DOC_LAYOUT_PAGE_SIZE,
					       buf, 1, 0);
		buf += DOC_LAYOUT_PAGE_SIZE;
	}
	FUNC2(docg3);
	return ret;
}