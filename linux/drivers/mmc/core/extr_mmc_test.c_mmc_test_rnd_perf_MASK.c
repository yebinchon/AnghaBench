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
struct timespec64 {int tv_sec; } ;
struct mmc_test_card {TYPE_1__* card; } ;
struct TYPE_2__ {unsigned int pref_erase; } ;

/* Variables and functions */
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int FUNC1 (struct mmc_test_card*,unsigned long,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_test_card*,unsigned long,unsigned int,struct timespec64*,struct timespec64*) ; 
 unsigned int FUNC4 (unsigned int) ; 
 struct timespec64 FUNC5 (struct timespec64,struct timespec64) ; 

__attribute__((used)) static int FUNC6(struct mmc_test_card *test, int write, int print,
			     unsigned long sz)
{
	unsigned int dev_addr, cnt, rnd_addr, range1, range2, last_ea = 0, ea;
	unsigned int ssz;
	struct timespec64 ts1, ts2, ts;
	int ret;

	ssz = sz >> 9;

	rnd_addr = FUNC2(test->card) / 4;
	range1 = rnd_addr / test->card->pref_erase;
	range2 = range1 / ssz;

	FUNC0(&ts1);
	for (cnt = 0; cnt < UINT_MAX; cnt++) {
		FUNC0(&ts2);
		ts = FUNC5(ts2, ts1);
		if (ts.tv_sec >= 10)
			break;
		ea = FUNC4(range1);
		if (ea == last_ea)
			ea -= 1;
		last_ea = ea;
		dev_addr = rnd_addr + test->card->pref_erase * ea +
			   ssz * FUNC4(range2);
		ret = FUNC1(test, sz, dev_addr, write, 0, 0);
		if (ret)
			return ret;
	}
	if (print)
		FUNC3(test, sz, cnt, &ts1, &ts2);
	return 0;
}