#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct can_rx_offload_cb {int /*<<< orphan*/  timestamp; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct can_rx_offload {scalar_t__ skb_queue_len_max; TYPE_1__ skb_queue; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  can_rx_offload_compare ; 
 struct can_rx_offload_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct can_rx_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct can_rx_offload *offload,
				struct sk_buff *skb, u32 timestamp)
{
	struct can_rx_offload_cb *cb;
	unsigned long flags;

	if (FUNC4(&offload->skb_queue) >
	    offload->skb_queue_len_max) {
		FUNC3(skb);
		return -ENOBUFS;
	}

	cb = FUNC1(skb);
	cb->timestamp = timestamp;

	FUNC5(&offload->skb_queue.lock, flags);
	FUNC0(&offload->skb_queue, skb, can_rx_offload_compare);
	FUNC6(&offload->skb_queue.lock, flags);

	FUNC2(offload);

	return 0;
}