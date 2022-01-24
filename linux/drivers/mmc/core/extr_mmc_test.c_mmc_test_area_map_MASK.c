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
struct mmc_test_area {unsigned long blocks; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  max_seg_sz; int /*<<< orphan*/  max_segs; int /*<<< orphan*/  sg; int /*<<< orphan*/  mem; } ;
struct mmc_test_card {TYPE_1__* card; struct mmc_test_area area; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mmc_test_card *test, unsigned long sz,
			     int max_scatter, int min_sg_len)
{
	struct mmc_test_area *t = &test->area;
	int err;

	t->blocks = sz >> 9;

	if (max_scatter) {
		err = FUNC2(t->mem, sz, t->sg,
						  t->max_segs, t->max_seg_sz,
				       &t->sg_len);
	} else {
		err = FUNC1(t->mem, sz, t->sg, 1, t->max_segs,
				      t->max_seg_sz, &t->sg_len, min_sg_len);
	}
	if (err)
		FUNC3("%s: Failed to map sg list\n",
		       FUNC0(test->card->host));
	return err;
}