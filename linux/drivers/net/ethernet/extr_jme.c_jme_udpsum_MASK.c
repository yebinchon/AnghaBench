#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ protocol; } ;
struct iphdr {int dummy; } ;
struct TYPE_4__ {scalar_t__ protocol; int ihl; } ;
struct TYPE_3__ {int check; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static u16
FUNC7(struct sk_buff *skb)
{
	u16 csum = 0xFFFFu;

	if (skb->len < (ETH_HLEN + sizeof(struct iphdr)))
		return csum;
	if (skb->protocol != FUNC0(ETH_P_IP))
		return csum;
	FUNC4(skb, ETH_HLEN);
	if ((FUNC1(skb)->protocol != IPPROTO_UDP) ||
	    (skb->len < (ETH_HLEN +
			(FUNC1(skb)->ihl << 2) +
			sizeof(struct udphdr)))) {
		FUNC2(skb);
		return csum;
	}
	FUNC5(skb,
			ETH_HLEN + (FUNC1(skb)->ihl << 2));
	csum = FUNC6(skb)->check;
	FUNC3(skb);
	FUNC2(skb);

	return csum;
}