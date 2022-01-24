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
struct can_rx_offload {scalar_t__ skb_queue_len_max; int /*<<< orphan*/  skb_queue; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct can_rx_offload*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC4(struct can_rx_offload *offload,
			      struct sk_buff *skb)
{
	if (FUNC2(&offload->skb_queue) >
	    offload->skb_queue_len_max) {
		FUNC1(skb);
		return -ENOBUFS;
	}

	FUNC3(&offload->skb_queue, skb);
	FUNC0(offload);

	return 0;
}