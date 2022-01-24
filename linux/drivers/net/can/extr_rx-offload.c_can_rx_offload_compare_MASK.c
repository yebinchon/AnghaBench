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
struct can_rx_offload_cb {int timestamp; } ;

/* Variables and functions */
 struct can_rx_offload_cb* FUNC0 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC1(struct sk_buff *a, struct sk_buff *b)
{
	const struct can_rx_offload_cb *cb_a, *cb_b;

	cb_a = FUNC0(a);
	cb_b = FUNC0(b);

	/* Substract two u32 and return result as int, to keep
	 * difference steady around the u32 overflow.
	 */
	return cb_b->timestamp - cb_a->timestamp;
}