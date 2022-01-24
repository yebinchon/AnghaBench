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
struct mmc_test_area {unsigned int max_tfr; unsigned long max_seg_sz; unsigned long max_segs; } ;
struct mmc_test_card {int /*<<< orphan*/  card; struct mmc_test_area area; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int FUNC1 (struct mmc_test_card*,unsigned int,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_test_card*,unsigned int,unsigned int,struct timespec64*,struct timespec64*) ; 

__attribute__((used)) static int FUNC4(struct mmc_test_card *test, int write,
			     unsigned int tot_sz, int max_scatter)
{
	struct mmc_test_area *t = &test->area;
	unsigned int dev_addr, i, cnt, sz, ssz;
	struct timespec64 ts1, ts2;
	int ret;

	sz = t->max_tfr;

	/*
	 * In the case of a maximally scattered transfer, the maximum transfer
	 * size is further limited by using PAGE_SIZE segments.
	 */
	if (max_scatter) {
		unsigned long max_tfr;

		if (t->max_seg_sz >= PAGE_SIZE)
			max_tfr = t->max_segs * PAGE_SIZE;
		else
			max_tfr = t->max_segs * t->max_seg_sz;
		if (sz > max_tfr)
			sz = max_tfr;
	}

	ssz = sz >> 9;
	dev_addr = FUNC2(test->card) / 4;
	if (tot_sz > dev_addr << 9)
		tot_sz = dev_addr << 9;
	cnt = tot_sz / sz;
	dev_addr &= 0xffff0000; /* Round to 64MiB boundary */

	FUNC0(&ts1);
	for (i = 0; i < cnt; i++) {
		ret = FUNC1(test, sz, dev_addr, write,
				       max_scatter, 0);
		if (ret)
			return ret;
		dev_addr += ssz;
	}
	FUNC0(&ts2);

	FUNC3(test, sz, cnt, &ts1, &ts2);

	return 0;
}