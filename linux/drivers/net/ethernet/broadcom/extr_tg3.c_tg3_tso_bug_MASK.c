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
struct tg3_napi {int dummy; } ;
struct tg3 {TYPE_1__* dev; } ;
struct sk_buff {struct sk_buff* next; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_4__ {int gso_segs; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct tg3_napi*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct tg3 *tp, struct tg3_napi *tnapi,
		       struct netdev_queue *txq, struct sk_buff *skb)
{
	struct sk_buff *segs, *nskb;
	u32 frag_cnt_est = FUNC5(skb)->gso_segs * 3;

	/* Estimate the number of fragments in the worst case */
	if (FUNC9(FUNC8(tnapi) <= frag_cnt_est)) {
		FUNC2(txq);

		/* netif_tx_stop_queue() must be done before checking
		 * checking tx index in tg3_tx_avail() below, because in
		 * tg3_tx(), we update tx index before checking for
		 * netif_tx_queue_stopped().
		 */
		FUNC6();
		if (FUNC8(tnapi) <= frag_cnt_est)
			return NETDEV_TX_BUSY;

		FUNC3(txq);
	}

	segs = FUNC4(skb, tp->dev->features &
				    ~(NETIF_F_TSO | NETIF_F_TSO6));
	if (FUNC0(segs) || !segs)
		goto tg3_tso_bug_end;

	do {
		nskb = segs;
		segs = segs->next;
		nskb->next = NULL;
		FUNC7(nskb, tp->dev);
	} while (segs);

tg3_tso_bug_end:
	FUNC1(skb);

	return NETDEV_TX_OK;
}