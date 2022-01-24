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
typedef  scalar_t__ u32 ;
struct t3cdev {int dummy; } ;
struct port_info {int port_id; } ;
struct net_device {int ifindex; } ;
struct neighbour {struct net_device* dev; scalar_t__ primary_key; } ;
struct l2t_entry {scalar_t__ addr; int ifindex; int smt_idx; int /*<<< orphan*/  lock; int /*<<< orphan*/  vlan; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  state; struct l2t_entry* next; } ;
struct l2t_data {int /*<<< orphan*/  lock; TYPE_1__* l2tab; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct l2t_entry* first; } ;

/* Variables and functions */
 struct l2t_data* FUNC0 (struct t3cdev*) ; 
 int /*<<< orphan*/  L2T_STATE_RESOLVING ; 
 int /*<<< orphan*/  VLAN_NONE ; 
 struct l2t_entry* FUNC1 (struct l2t_data*) ; 
 int FUNC2 (scalar_t__,int,struct l2t_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct neighbour* FUNC5 (struct dst_entry*,void const*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2t_data*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2t_entry*,struct neighbour*) ; 
 struct port_info* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct l2t_entry*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

struct l2t_entry *FUNC19(struct t3cdev *cdev, struct dst_entry *dst,
			     struct net_device *dev, const void *daddr)
{
	struct l2t_entry *e = NULL;
	struct neighbour *neigh;
	struct port_info *p;
	struct l2t_data *d;
	int hash;
	u32 addr;
	int ifidx;
	int smt_idx;

	FUNC11();
	neigh = FUNC5(dst, daddr);
	if (!neigh)
		goto done_rcu;

	addr = *(u32 *) neigh->primary_key;
	ifidx = neigh->dev->ifindex;

	if (!dev)
		dev = neigh->dev;
	p = FUNC10(dev);
	smt_idx = p->port_id;

	d = FUNC0(cdev);
	if (!d)
		goto done_rcu;

	hash = FUNC2(addr, ifidx, d);

	FUNC17(&d->lock);
	for (e = d->l2tab[hash].first; e; e = e->next)
		if (e->addr == addr && e->ifindex == ifidx &&
		    e->smt_idx == smt_idx) {
			FUNC7(d, e);
			if (FUNC3(&e->refcnt) == 1)
				FUNC13(e, neigh);
			goto done_unlock;
		}

	/* Need to allocate a new entry */
	e = FUNC1(d);
	if (e) {
		FUNC14(&e->lock);	/* avoid race with t3_l2t_free */
		e->next = d->l2tab[hash].first;
		d->l2tab[hash].first = e;
		e->state = L2T_STATE_RESOLVING;
		e->addr = addr;
		e->ifindex = ifidx;
		e->smt_idx = smt_idx;
		FUNC4(&e->refcnt, 1);
		FUNC9(e, neigh);
		if (FUNC6(neigh->dev))
			e->vlan = FUNC16(neigh->dev);
		else
			e->vlan = VLAN_NONE;
		FUNC15(&e->lock);
	}
done_unlock:
	FUNC18(&d->lock);
done_rcu:
	if (neigh)
		FUNC8(neigh);
	FUNC12();
	return e;
}