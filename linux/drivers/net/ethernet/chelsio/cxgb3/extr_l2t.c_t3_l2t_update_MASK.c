#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct t3cdev {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; TYPE_1__* dev; scalar_t__ primary_key; } ;
struct l2t_entry {scalar_t__ addr; int ifindex; scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  dmac; int /*<<< orphan*/  arpq; struct neighbour* neigh; int /*<<< orphan*/  refcnt; struct l2t_entry* next; } ;
struct l2t_data {int /*<<< orphan*/  lock; TYPE_2__* l2tab; } ;
struct TYPE_4__ {struct l2t_entry* first; } ;
struct TYPE_3__ {int ifindex; } ;

/* Variables and functions */
 struct l2t_data* FUNC0 (struct t3cdev*) ; 
 scalar_t__ L2T_STATE_RESOLVING ; 
 scalar_t__ L2T_STATE_STALE ; 
 scalar_t__ L2T_STATE_VALID ; 
 int NUD_CONNECTED ; 
 int NUD_FAILED ; 
 int NUD_STALE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int FUNC2 (scalar_t__,int,struct l2t_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct t3cdev*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2t_entry*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct t3cdev*,int /*<<< orphan*/ *,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct t3cdev *dev, struct neighbour *neigh)
{
	struct sk_buff_head arpq;
	struct l2t_entry *e;
	struct l2t_data *d = FUNC0(dev);
	u32 addr = *(u32 *) neigh->primary_key;
	int ifidx = neigh->dev->ifindex;
	int hash = FUNC2(addr, ifidx, d);

	FUNC7(&d->lock);
	for (e = d->l2tab[hash].first; e; e = e->next)
		if (e->addr == addr && e->ifindex == ifidx) {
			FUNC13(&e->lock);
			goto found;
		}
	FUNC9(&d->lock);
	return;

found:
	FUNC1(&arpq);

	FUNC8(&d->lock);
	if (FUNC3(&e->refcnt)) {
		if (neigh != e->neigh)
			FUNC6(e, neigh);

		if (e->state == L2T_STATE_RESOLVING) {
			if (neigh->nud_state & NUD_FAILED) {
				FUNC12(&e->arpq, &arpq);
			} else if (neigh->nud_state & (NUD_CONNECTED|NUD_STALE))
				FUNC10(dev, NULL, e);
		} else {
			e->state = neigh->nud_state & NUD_CONNECTED ?
			    L2T_STATE_VALID : L2T_STATE_STALE;
			if (!FUNC4(e->dmac, neigh->ha))
				FUNC10(dev, NULL, e);
		}
	}
	FUNC14(&e->lock);

	if (!FUNC11(&arpq))
		FUNC5(dev, &arpq);
}