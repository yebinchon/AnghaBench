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
struct udphdr {scalar_t__ dest; scalar_t__ source; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PTP_EVENT_PORT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(struct sk_buff *skb)
{
	struct udphdr *uh = (struct udphdr *)(skb->data + ETH_HLEN +
					      FUNC0(skb->data));

	return  uh->dest == FUNC1(PTP_EVENT_PORT) &&
		uh->source == FUNC1(PTP_EVENT_PORT);
}