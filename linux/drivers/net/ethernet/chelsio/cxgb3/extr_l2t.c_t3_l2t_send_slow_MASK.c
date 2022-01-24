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
struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct l2t_entry {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  arpq; int /*<<< orphan*/  neigh; } ;
struct cpl_l2t_write_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  L2T_STATE_RESOLVING 130 
#define  L2T_STATE_STALE 129 
#define  L2T_STATE_VALID 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2t_entry*,struct sk_buff*) ; 
 int FUNC3 (struct t3cdev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct t3cdev*,struct sk_buff*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct t3cdev *dev, struct sk_buff *skb,
		     struct l2t_entry *e)
{
again:
	switch (e->state) {
	case L2T_STATE_STALE:	/* entry is stale, kick off revalidation */
		FUNC4(e->neigh, NULL);
		FUNC7(&e->lock);
		if (e->state == L2T_STATE_STALE)
			e->state = L2T_STATE_VALID;
		FUNC8(&e->lock);
		/* fall through */
	case L2T_STATE_VALID:	/* fast-path, send the packet on */
		return FUNC3(dev, skb);
	case L2T_STATE_RESOLVING:
		FUNC7(&e->lock);
		if (e->state != L2T_STATE_RESOLVING) {
			/* ARP already completed */
			FUNC8(&e->lock);
			goto again;
		}
		FUNC2(e, skb);
		FUNC8(&e->lock);

		/*
		 * Only the first packet added to the arpq should kick off
		 * resolution.  However, because the alloc_skb below can fail,
		 * we allow each packet added to the arpq to retry resolution
		 * as a way of recovering from transient memory exhaustion.
		 * A better way would be to use a work request to retry L2T
		 * entries when there's no memory.
		 */
		if (!FUNC4(e->neigh, NULL)) {
			skb = FUNC1(sizeof(struct cpl_l2t_write_req),
					GFP_ATOMIC);
			if (!skb)
				break;

			FUNC7(&e->lock);
			if (!FUNC6(&e->arpq))
				FUNC5(dev, skb, e);
			else	/* we lost the race */
				FUNC0(skb);
			FUNC8(&e->lock);
		}
	}
	return 0;
}