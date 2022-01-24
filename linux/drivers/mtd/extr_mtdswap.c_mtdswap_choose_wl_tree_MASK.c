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
struct rb_root {int /*<<< orphan*/ * rb_node; } ;
struct mtdswap_dev {unsigned int max_erase_count; TYPE_1__* trees; } ;
struct TYPE_2__ {struct rb_root root; } ;

/* Variables and functions */
 unsigned int MAX_ERASE_DIFF ; 
 unsigned int MTDSWAP_DIRTY ; 
 unsigned int FUNC0 (struct rb_root*) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(struct mtdswap_dev *d)
{
	static unsigned int pick_cnt;
	unsigned int i, idx = -1, wear, max;
	struct rb_root *root;

	max = 0;
	for (i = 0; i <= MTDSWAP_DIRTY; i++) {
		root = &d->trees[i].root;
		if (root->rb_node == NULL)
			continue;

		wear = d->max_erase_count - FUNC0(root);
		if (wear > max) {
			max = wear;
			idx = i;
		}
	}

	if (max > MAX_ERASE_DIFF && pick_cnt >= FUNC1(max) - 1) {
		pick_cnt = 0;
		return idx;
	}

	pick_cnt++;
	return -1;
}