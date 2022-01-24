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
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; struct sk_buff* next; } ;
struct r8152 {TYPE_1__* netdev; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
typedef  int netdev_features_t ;
struct TYPE_4__ {scalar_t__ gso_size; } ;
struct TYPE_3__ {int features; struct net_device_stats stats; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff_head*,struct sk_buff_head*) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct r8152 *tp, struct sk_buff *skb,
				  struct sk_buff_head *list)
{
	if (FUNC8(skb)->gso_size) {
		netdev_features_t features = tp->netdev->features;
		struct sk_buff_head seg_list;
		struct sk_buff *segs, *nskb;

		features &= ~(NETIF_F_SG | NETIF_F_IPV6_CSUM | NETIF_F_TSO6);
		segs = FUNC6(skb, features);
		if (FUNC0(segs) || !segs)
			goto drop;

		FUNC2(&seg_list);

		do {
			nskb = segs;
			segs = segs->next;
			nskb->next = NULL;
			FUNC3(&seg_list, nskb);
		} while (segs);

		FUNC7(&seg_list, list);
		FUNC4(skb);
	} else if (skb->ip_summed == CHECKSUM_PARTIAL) {
		if (FUNC5(skb) < 0)
			goto drop;

		FUNC1(list, skb);
	} else {
		struct net_device_stats *stats;

drop:
		stats = &tp->netdev->stats;
		stats->tx_dropped++;
		FUNC4(skb);
	}
}