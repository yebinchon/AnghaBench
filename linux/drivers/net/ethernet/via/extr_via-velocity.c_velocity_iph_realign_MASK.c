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
struct velocity_info {int flags; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int VELOCITY_FLAGS_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC2(struct velocity_info *vptr,
					struct sk_buff *skb, int pkt_size)
{
	if (vptr->flags & VELOCITY_FLAGS_IP_ALIGN) {
		FUNC0(skb->data + 2, skb->data, pkt_size);
		FUNC1(skb, 2);
	}
}