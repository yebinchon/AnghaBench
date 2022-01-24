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
struct sk_buff {struct sk_buff* next; } ;
struct net_device {int features; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct myri10ge_slice_state {TYPE_1__ stats; } ;
struct myri10ge_priv {struct myri10ge_slice_state* ss; } ;
typedef  scalar_t__ netdev_tx_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ NETDEV_TX_OK ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct net_device*) ; 
 struct myri10ge_priv* FUNC3 (struct net_device*) ; 
 size_t FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb,
					 struct net_device *dev)
{
	struct sk_buff *segs, *curr;
	struct myri10ge_priv *mgp = FUNC3(dev);
	struct myri10ge_slice_state *ss;
	netdev_tx_t status;

	segs = FUNC5(skb, dev->features & ~NETIF_F_TSO6);
	if (FUNC0(segs))
		goto drop;

	while (segs) {
		curr = segs;
		segs = segs->next;
		curr->next = NULL;
		status = FUNC2(curr, dev);
		if (status != 0) {
			FUNC1(curr);
			if (segs != NULL) {
				curr = segs;
				segs = segs->next;
				curr->next = NULL;
				FUNC1(segs);
			}
			goto drop;
		}
	}
	FUNC1(skb);
	return NETDEV_TX_OK;

drop:
	ss = &mgp->ss[FUNC4(skb)];
	FUNC1(skb);
	ss->stats.tx_dropped += 1;
	return NETDEV_TX_OK;
}