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
struct mmc_test_area {unsigned long max_tfr; unsigned long dev_addr; } ;
struct mmc_test_card {struct mmc_test_area area; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_test_card*) ; 
 int FUNC1 (struct mmc_test_card*,unsigned long,unsigned int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mmc_test_card *test)
{
	struct mmc_test_area *t = &test->area;
	unsigned long sz;
	unsigned int dev_addr;
	int ret;

	ret = FUNC0(test);
	if (ret)
		return ret;
	for (sz = 512; sz < t->max_tfr; sz <<= 1) {
		dev_addr = t->dev_addr + (sz >> 9);
		ret = FUNC1(test, sz, dev_addr, 1, 0, 1);
		if (ret)
			return ret;
	}
	ret = FUNC0(test);
	if (ret)
		return ret;
	sz = t->max_tfr;
	dev_addr = t->dev_addr;
	return FUNC1(test, sz, dev_addr, 1, 0, 1);
}