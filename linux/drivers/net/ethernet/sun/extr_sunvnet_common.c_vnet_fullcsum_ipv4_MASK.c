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
struct udphdr {void* check; } ;
struct tcphdr {void* check; } ;
struct sk_buff {scalar_t__ protocol; int csum_level; void* csum; scalar_t__ len; int /*<<< orphan*/  ip_summed; } ;
struct iphdr {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 void* FUNC3 (struct sk_buff*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 struct tcphdr* FUNC5 (struct sk_buff*) ; 
 struct udphdr* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC7(struct sk_buff *skb)
{
	struct iphdr *iph = FUNC2(skb);
	int offset = FUNC4(skb);

	if (skb->protocol != FUNC1(ETH_P_IP))
		return;
	if (iph->protocol != IPPROTO_TCP &&
	    iph->protocol != IPPROTO_UDP)
		return;
	skb->ip_summed = CHECKSUM_NONE;
	skb->csum_level = 1;
	skb->csum = 0;
	if (iph->protocol == IPPROTO_TCP) {
		struct tcphdr *ptcp = FUNC5(skb);

		ptcp->check = 0;
		skb->csum = FUNC3(skb, offset, skb->len - offset, 0);
		ptcp->check = FUNC0(iph->saddr, iph->daddr,
						skb->len - offset, IPPROTO_TCP,
						skb->csum);
	} else if (iph->protocol == IPPROTO_UDP) {
		struct udphdr *pudp = FUNC6(skb);

		pudp->check = 0;
		skb->csum = FUNC3(skb, offset, skb->len - offset, 0);
		pudp->check = FUNC0(iph->saddr, iph->daddr,
						skb->len - offset, IPPROTO_UDP,
						skb->csum);
	}
}