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
struct timespec64 {int dummy; } ;
struct mmc_test_area {unsigned long max_sz; unsigned int dev_addr; } ;
struct mmc_test_card {int /*<<< orphan*/  card; struct mmc_test_area area; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_TRIM_ARG ; 
 int RESULT_UNSUP_CARD ; 
 int RESULT_UNSUP_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mmc_test_card*) ; 
 int FUNC5 (struct mmc_test_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_test_card*,unsigned long,unsigned int,struct timespec64*,struct timespec64*) ; 

__attribute__((used)) static int FUNC7(struct mmc_test_card *test)
{
	struct mmc_test_area *t = &test->area;
	unsigned long sz;
	unsigned int dev_addr, i, cnt;
	struct timespec64 ts1, ts2;
	int ret;

	if (!FUNC2(test->card))
		return RESULT_UNSUP_CARD;

	if (!FUNC1(test->card))
		return RESULT_UNSUP_HOST;

	for (sz = 512; sz <= t->max_sz; sz <<= 1) {
		ret = FUNC4(test);
		if (ret)
			return ret;
		ret = FUNC5(test);
		if (ret)
			return ret;
		cnt = t->max_sz / sz;
		dev_addr = t->dev_addr;
		FUNC0(&ts1);
		for (i = 0; i < cnt; i++) {
			ret = FUNC3(test->card, dev_addr, sz >> 9,
					MMC_TRIM_ARG);
			if (ret)
				return ret;
			dev_addr += (sz >> 9);
		}
		FUNC0(&ts2);
		FUNC6(test, sz, cnt, &ts1, &ts2);
	}
	return 0;
}