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
typedef  int u16 ;
struct sk_buff {scalar_t__ ooo_okay; int /*<<< orphan*/  sk; } ;
struct net_device {int real_num_tx_queues; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct sk_buff*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC4(struct net_device *ndev, struct sk_buff *skb)
{
	int q_idx = FUNC1(skb->sk);

	if (q_idx < 0 || skb->ooo_okay || q_idx >= ndev->real_num_tx_queues) {
		/* If forwarding a packet, we use the recorded queue when
		 * available for better cache locality.
		 */
		if (FUNC3(skb))
			q_idx = FUNC2(skb);
		else
			q_idx = FUNC0(ndev, skb, q_idx);
	}

	return q_idx;
}