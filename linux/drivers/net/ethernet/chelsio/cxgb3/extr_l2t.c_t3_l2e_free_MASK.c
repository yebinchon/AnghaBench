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
struct l2t_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/ * neigh; int /*<<< orphan*/  refcnt; } ;
struct l2t_data {int /*<<< orphan*/  nfree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct l2t_data *d, struct l2t_entry *e)
{
	FUNC3(&e->lock);
	if (FUNC1(&e->refcnt) == 0) {	/* hasn't been recycled */
		if (e->neigh) {
			FUNC2(e->neigh);
			e->neigh = NULL;
		}
	}
	FUNC4(&e->lock);
	FUNC0(&d->nfree);
}