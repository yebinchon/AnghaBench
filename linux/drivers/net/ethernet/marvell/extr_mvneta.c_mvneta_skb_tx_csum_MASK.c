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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct mvneta_port {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  nexthdr; } ;
struct iphdr {int ihl; int /*<<< orphan*/  protocol; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  MVNETA_TX_L4_CSUM_NOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static u32 FUNC7(struct mvneta_port *pp, struct sk_buff *skb)
{
	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		int ip_hdr_len = 0;
		__be16 l3_proto = FUNC6(skb);
		u8 l4_proto;

		if (l3_proto == FUNC0(ETH_P_IP)) {
			struct iphdr *ip4h = FUNC1(skb);

			/* Calculate IPv4 checksum and L4 checksum */
			ip_hdr_len = ip4h->ihl;
			l4_proto = ip4h->protocol;
		} else if (l3_proto == FUNC0(ETH_P_IPV6)) {
			struct ipv6hdr *ip6h = FUNC2(skb);

			/* Read l4_protocol from one of IPv6 extra headers */
			if (FUNC4(skb) > 0)
				ip_hdr_len = (FUNC4(skb) >> 2);
			l4_proto = ip6h->nexthdr;
		} else
			return MVNETA_TX_L4_CSUM_NOT;

		return FUNC3(FUNC5(skb),
					    l3_proto, ip_hdr_len, l4_proto);
	}

	return MVNETA_TX_L4_CSUM_NOT;
}