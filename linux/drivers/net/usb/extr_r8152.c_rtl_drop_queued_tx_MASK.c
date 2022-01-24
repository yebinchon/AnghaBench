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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sk_buff {int dummy; } ;
struct r8152 {struct sk_buff_head tx_queue; TYPE_1__* netdev; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct r8152 *tp)
{
	struct net_device_stats *stats = &tp->netdev->stats;
	struct sk_buff_head skb_head, *tx_queue = &tp->tx_queue;
	struct sk_buff *skb;

	if (FUNC3(tx_queue))
		return;

	FUNC1(&skb_head);
	FUNC5(&tx_queue->lock);
	FUNC4(tx_queue, &skb_head);
	FUNC6(&tx_queue->lock);

	while ((skb = FUNC0(&skb_head))) {
		FUNC2(skb);
		stats->tx_dropped++;
	}
}