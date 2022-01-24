#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct neighbour {TYPE_3__* dev; scalar_t__ primary_key; TYPE_1__* tbl; } ;
struct l2t_entry {int ifindex; scalar_t__ lport; int hash; int v6; int /*<<< orphan*/  lock; struct l2t_entry* next; int /*<<< orphan*/  vlan; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  addr; int /*<<< orphan*/  dmac; int /*<<< orphan*/  state; } ;
struct l2t_data {int /*<<< orphan*/  lock; TYPE_2__* l2tab; } ;
struct TYPE_10__ {scalar_t__ tx_chan; scalar_t__ lport; } ;
struct TYPE_9__ {int ifindex; int flags; } ;
struct TYPE_8__ {struct l2t_entry* first; } ;
struct TYPE_7__ {unsigned int key_len; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  L2T_STATE_RESOLVING ; 
 int /*<<< orphan*/  VLAN_NONE ; 
 int FUNC0 (struct l2t_data*,int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct l2t_entry*,int /*<<< orphan*/ *) ; 
 struct l2t_entry* FUNC2 (struct l2t_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2t_data*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct l2t_entry*,struct neighbour*) ; 
 TYPE_5__* FUNC9 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2t_entry*,struct neighbour*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

struct l2t_entry *FUNC17(struct l2t_data *d, struct neighbour *neigh,
				const struct net_device *physdev,
				unsigned int priority)
{
	u8 lport;
	u16 vlan;
	struct l2t_entry *e;
	unsigned int addr_len = neigh->tbl->key_len;
	u32 *addr = (u32 *)neigh->primary_key;
	int ifidx = neigh->dev->ifindex;
	int hash = FUNC0(d, addr, addr_len, ifidx);

	if (neigh->dev->flags & IFF_LOOPBACK)
		lport = FUNC9(physdev)->tx_chan + 4;
	else
		lport = FUNC9(physdev)->lport;

	if (FUNC5(neigh->dev)) {
		vlan = FUNC14(neigh->dev);
		vlan |= FUNC13(neigh->dev, priority);
	} else {
		vlan = VLAN_NONE;
	}

	FUNC15(&d->lock);
	for (e = d->l2tab[hash].first; e; e = e->next)
		if (!FUNC1(e, addr) && e->ifindex == ifidx &&
		    e->vlan == vlan && e->lport == lport) {
			FUNC6(d, e);
			if (FUNC3(&e->refcnt) == 1)
				FUNC10(e, neigh);
			goto done;
		}

	/* Need to allocate a new entry */
	e = FUNC2(d);
	if (e) {
		FUNC11(&e->lock);          /* avoid race with t4_l2t_free */
		e->state = L2T_STATE_RESOLVING;
		if (neigh->dev->flags & IFF_LOOPBACK)
			FUNC7(e->dmac, physdev->dev_addr, sizeof(e->dmac));
		FUNC7(e->addr, addr, addr_len);
		e->ifindex = ifidx;
		e->hash = hash;
		e->lport = lport;
		e->v6 = addr_len == 16;
		FUNC4(&e->refcnt, 1);
		FUNC8(e, neigh);
		e->vlan = vlan;
		e->next = d->l2tab[hash].first;
		d->l2tab[hash].first = e;
		FUNC12(&e->lock);
	}
done:
	FUNC16(&d->lock);
	return e;
}