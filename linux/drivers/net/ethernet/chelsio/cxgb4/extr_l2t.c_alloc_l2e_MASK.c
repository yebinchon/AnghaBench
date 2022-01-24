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
struct l2t_entry {scalar_t__ state; size_t hash; struct l2t_entry* next; struct l2t_entry* first; int /*<<< orphan*/  refcnt; } ;
struct l2t_data {size_t l2t_size; struct l2t_entry* l2tab; int /*<<< orphan*/  nfree; struct l2t_entry* rover; } ;

/* Variables and functions */
 scalar_t__ L2T_STATE_SWITCHING ; 
 scalar_t__ L2T_STATE_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct l2t_entry *FUNC2(struct l2t_data *d)
{
	struct l2t_entry *end, *e, **p;

	if (!FUNC1(&d->nfree))
		return NULL;

	/* there's definitely a free entry */
	for (e = d->rover, end = &d->l2tab[d->l2t_size]; e != end; ++e)
		if (FUNC1(&e->refcnt) == 0)
			goto found;

	for (e = d->l2tab; FUNC1(&e->refcnt); ++e)
		;
found:
	d->rover = e + 1;
	FUNC0(&d->nfree);

	/*
	 * The entry we found may be an inactive entry that is
	 * presently in the hash table.  We need to remove it.
	 */
	if (e->state < L2T_STATE_SWITCHING)
		for (p = &d->l2tab[e->hash].first; *p; p = &(*p)->next)
			if (*p == e) {
				*p = e->next;
				e->next = NULL;
				break;
			}

	e->state = L2T_STATE_UNUSED;
	return e;
}