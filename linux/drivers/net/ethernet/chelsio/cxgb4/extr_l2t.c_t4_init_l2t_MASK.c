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
struct l2t_data {unsigned int l2t_start; unsigned int l2t_size; TYPE_1__* l2tab; int /*<<< orphan*/  lock; int /*<<< orphan*/  nfree; TYPE_1__* rover; } ;
struct TYPE_2__ {int idx; int /*<<< orphan*/  arpq; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int L2T_MIN_HASH_BUCKETS ; 
 unsigned int L2T_SIZE ; 
 int /*<<< orphan*/  L2T_STATE_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 struct l2t_data* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2tab ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l2t_data*,int /*<<< orphan*/ ,unsigned int) ; 

struct l2t_data *FUNC6(unsigned int l2t_start, unsigned int l2t_end)
{
	unsigned int l2t_size;
	int i;
	struct l2t_data *d;

	if (l2t_start >= l2t_end || l2t_end >= L2T_SIZE)
		return NULL;
	l2t_size = l2t_end - l2t_start + 1;
	if (l2t_size < L2T_MIN_HASH_BUCKETS)
		return NULL;

	d = FUNC1(FUNC5(d, l2tab, l2t_size), GFP_KERNEL);
	if (!d)
		return NULL;

	d->l2t_start = l2t_start;
	d->l2t_size = l2t_size;

	d->rover = d->l2tab;
	FUNC0(&d->nfree, l2t_size);
	FUNC2(&d->lock);

	for (i = 0; i < d->l2t_size; ++i) {
		d->l2tab[i].idx = i;
		d->l2tab[i].state = L2T_STATE_UNUSED;
		FUNC4(&d->l2tab[i].lock);
		FUNC0(&d->l2tab[i].refcnt, 0);
		FUNC3(&d->l2tab[i].arpq);
	}
	return d;
}