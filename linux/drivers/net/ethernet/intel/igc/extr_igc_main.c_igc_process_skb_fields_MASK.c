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
typedef  union igc_adv_rx_desc {int dummy; } igc_adv_rx_desc ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct igc_ring {int /*<<< orphan*/  netdev; int /*<<< orphan*/  queue_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_ring*,union igc_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct igc_ring *rx_ring,
				   union igc_adv_rx_desc *rx_desc,
				   struct sk_buff *skb)
{
	FUNC1(rx_ring, rx_desc, skb);

	FUNC2(skb, rx_ring->queue_index);

	skb->protocol = FUNC0(skb, rx_ring->netdev);
}