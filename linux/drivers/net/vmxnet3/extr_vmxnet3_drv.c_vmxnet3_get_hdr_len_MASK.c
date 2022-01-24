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
struct TYPE_2__ {scalar_t__ tcp; scalar_t__ v6; scalar_t__ v4; } ;
union Vmxnet3_GenericDesc {TYPE_1__ rcd; } ;
typedef  int u32 ;
struct vmxnet3_adapter {int dummy; } ;
struct vlan_ethhdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct tcphdr {int doff; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct ethhdr {scalar_t__ h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static u32
FUNC6(struct vmxnet3_adapter *adapter, struct sk_buff *skb,
		    union Vmxnet3_GenericDesc *gdesc)
{
	u32 hlen, maplen;
	union {
		void *ptr;
		struct ethhdr *eth;
		struct vlan_ethhdr *veth;
		struct iphdr *ipv4;
		struct ipv6hdr *ipv6;
		struct tcphdr *tcp;
	} hdr;
	FUNC0(gdesc->rcd.tcp == 0);

	maplen = FUNC4(skb);
	if (FUNC5(sizeof(struct iphdr) + sizeof(struct tcphdr) > maplen))
		return 0;

	if (skb->protocol == FUNC1(ETH_P_8021Q) ||
	    skb->protocol == FUNC1(ETH_P_8021AD))
		hlen = sizeof(struct vlan_ethhdr);
	else
		hlen = sizeof(struct ethhdr);

	hdr.eth = FUNC2(skb);
	if (gdesc->rcd.v4) {
		FUNC0(hdr.eth->h_proto != FUNC3(ETH_P_IP) &&
		       hdr.veth->h_vlan_encapsulated_proto != FUNC3(ETH_P_IP));
		hdr.ptr += hlen;
		FUNC0(hdr.ipv4->protocol != IPPROTO_TCP);
		hlen = hdr.ipv4->ihl << 2;
		hdr.ptr += hdr.ipv4->ihl << 2;
	} else if (gdesc->rcd.v6) {
		FUNC0(hdr.eth->h_proto != FUNC3(ETH_P_IPV6) &&
		       hdr.veth->h_vlan_encapsulated_proto != FUNC3(ETH_P_IPV6));
		hdr.ptr += hlen;
		/* Use an estimated value, since we also need to handle
		 * TSO case.
		 */
		if (hdr.ipv6->nexthdr != IPPROTO_TCP)
			return sizeof(struct ipv6hdr) + sizeof(struct tcphdr);
		hlen = sizeof(struct ipv6hdr);
		hdr.ptr += sizeof(struct ipv6hdr);
	} else {
		/* Non-IP pkt, dont estimate header length */
		return 0;
	}

	if (hlen + sizeof(struct tcphdr) > maplen)
		return 0;

	return (hlen + (hdr.tcp->doff << 2));
}