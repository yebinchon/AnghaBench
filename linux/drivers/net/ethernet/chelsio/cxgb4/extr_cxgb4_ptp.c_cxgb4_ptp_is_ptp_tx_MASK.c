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
struct udphdr {scalar_t__ dest; } ;
struct sk_buff {scalar_t__ len; scalar_t__ protocol; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  PTP_EVENT_PORT ; 
 scalar_t__ PTP_IN_TRANSMIT_PACKET_MAXNUM ; 
 scalar_t__ PTP_MIN_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct udphdr* FUNC3 (struct sk_buff*) ; 

bool FUNC4(struct sk_buff *skb)
{
	struct udphdr *uh;

	uh = FUNC3(skb);
	return skb->len >= PTP_MIN_LENGTH &&
		skb->len <= PTP_IN_TRANSMIT_PACKET_MAXNUM &&
		FUNC2(skb->protocol == FUNC0(ETH_P_IP)) &&
		FUNC1(skb)->protocol == IPPROTO_UDP &&
		uh->dest == FUNC0(PTP_EVENT_PORT);
}