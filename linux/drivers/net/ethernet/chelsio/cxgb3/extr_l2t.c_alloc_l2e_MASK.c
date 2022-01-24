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
struct l2t_entry {scalar_t__ state; struct l2t_entry* next; struct l2t_entry* first; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  addr; int /*<<< orphan*/  refcnt; } ;
struct l2t_data {size_t nentries; struct l2t_entry* l2tab; int /*<<< orphan*/  nfree; struct l2t_entry* rover; } ;

/* Variables and functions */
 scalar_t__ L2T_STATE_UNUSED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct l2t_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct l2t_entry *FUNC3(struct l2t_data *d)
{
	struct l2t_entry *end, *e, **p;

	if (!FUNC2(&d->nfree))
		return NULL;

	/* there's definitely a free entry */
	for (e = d->rover, end = &d->l2tab[d->nentries]; e != end; ++e)
		if (FUNC2(&e->refcnt) == 0)
			goto found;

	for (e = &d->l2tab[1]; FUNC2(&e->refcnt); ++e) ;
found:
	d->rover = e + 1;
	FUNC1(&d->nfree);

	/*
	 * The entry we found may be an inactive entry that is
	 * presently in the hash table.  We need to remove it.
	 */
	if (e->state != L2T_STATE_UNUSED) {
		int hash = FUNC0(e->addr, e->ifindex, d);

		for (p = &d->l2tab[hash].first; *p; p = &(*p)->next)
			if (*p == e) {
				*p = e->next;
				break;
			}
		e->state = L2T_STATE_UNUSED;
	}
	return e;
}