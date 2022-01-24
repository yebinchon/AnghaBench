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
struct can_rx_offload {int /*<<< orphan*/  skb_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct can_rx_offload*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct can_rx_offload*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC4(struct can_rx_offload *offload)
{
	struct sk_buff *skb;
	int received = 0;

	while (1) {
		skb = FUNC1(offload, 0);
		if (FUNC0(skb))
			continue;
		if (!skb)
			break;

		FUNC3(&offload->skb_queue, skb);
		received++;
	}

	if (received)
		FUNC2(offload);

	return received;
}