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
struct sk_buff {scalar_t__ data; } ;
struct mwifiex_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ar_op; } ;
struct mwifiex_arp_eth_header {int /*<<< orphan*/ * ar_tip; int /*<<< orphan*/ * ar_sip; TYPE_1__ hdr; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int /*<<< orphan*/  icmp6_type; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
#define  ETH_P_ARP 129 
#define  ETH_P_IPV6 128 
 int /*<<< orphan*/  NDISC_NEIGHBOUR_ADVERTISEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct mwifiex_private *priv,
			       struct sk_buff *skb)
{
	const struct mwifiex_arp_eth_header *arp;
	struct ethhdr *eth;
	struct ipv6hdr *ipv6;
	struct icmp6hdr *icmpv6;

	eth = (struct ethhdr *)skb->data;
	switch (FUNC2(eth->h_proto)) {
	case ETH_P_ARP:
		arp = (void *)(skb->data + sizeof(struct ethhdr));
		if (arp->hdr.ar_op == FUNC0(ARPOP_REPLY) ||
		    arp->hdr.ar_op == FUNC0(ARPOP_REQUEST)) {
			if (!FUNC1(arp->ar_sip, arp->ar_tip, 4))
				return true;
		}
		break;
	case ETH_P_IPV6:
		ipv6 = (void *)(skb->data + sizeof(struct ethhdr));
		icmpv6 = (void *)(skb->data + sizeof(struct ethhdr) +
				  sizeof(struct ipv6hdr));
		if (NDISC_NEIGHBOUR_ADVERTISEMENT == icmpv6->icmp6_type) {
			if (!FUNC1(&ipv6->saddr, &ipv6->daddr,
				    sizeof(struct in6_addr)))
				return true;
		}
		break;
	default:
		break;
	}

	return false;
}