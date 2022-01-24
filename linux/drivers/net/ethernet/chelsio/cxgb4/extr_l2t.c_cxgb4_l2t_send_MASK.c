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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct l2t_entry {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  arpq; int /*<<< orphan*/  neigh; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
#define  L2T_STATE_RESOLVING 131 
#define  L2T_STATE_STALE 130 
#define  L2T_STATE_SYNC_WRITE 129 
#define  L2T_STATE_VALID 128 
 int /*<<< orphan*/  FUNC0 (struct l2t_entry*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,struct l2t_entry*,int) ; 

int FUNC8(struct net_device *dev, struct sk_buff *skb,
		   struct l2t_entry *e)
{
	struct adapter *adap = FUNC2(dev);

again:
	switch (e->state) {
	case L2T_STATE_STALE:     /* entry is stale, kick off revalidation */
		FUNC1(e->neigh, NULL);
		FUNC4(&e->lock);
		if (e->state == L2T_STATE_STALE)
			e->state = L2T_STATE_VALID;
		FUNC5(&e->lock);
		/* fall through */
	case L2T_STATE_VALID:     /* fast-path, send the packet on */
		return FUNC6(adap, skb);
	case L2T_STATE_RESOLVING:
	case L2T_STATE_SYNC_WRITE:
		FUNC4(&e->lock);
		if (e->state != L2T_STATE_SYNC_WRITE &&
		    e->state != L2T_STATE_RESOLVING) {
			FUNC5(&e->lock);
			goto again;
		}
		FUNC0(e, skb);
		FUNC5(&e->lock);

		if (e->state == L2T_STATE_RESOLVING &&
		    !FUNC1(e->neigh, NULL)) {
			FUNC4(&e->lock);
			if (e->state == L2T_STATE_RESOLVING &&
			    !FUNC3(&e->arpq))
				FUNC7(adap, e, 1);
			FUNC5(&e->lock);
		}
	}
	return 0;
}