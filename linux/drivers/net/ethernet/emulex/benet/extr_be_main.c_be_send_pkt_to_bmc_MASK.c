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
typedef  scalar_t__ u8 ;
struct udphdr {int /*<<< orphan*/  dest; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct icmp6hdr {int icmp6_type; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
#define  DHCPV6_RAS_PORT 134 
#define  DHCP_CLIENT_PORT 133 
#define  DHCP_SERVER_PORT 132 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
#define  NDISC_NEIGHBOUR_ADVERTISEMENT 131 
#define  NDISC_ROUTER_ADVERTISEMENT 130 
#define  NET_BIOS_PORT1 129 
#define  NET_BIOS_PORT2 128 
 struct sk_buff* FUNC0 (struct be_adapter*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct icmp6hdr* FUNC3 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct be_adapter*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct be_adapter*,struct ethhdr*) ; 
 int FUNC7 (struct be_adapter*) ; 
 int FUNC8 (struct be_adapter*) ; 
 int FUNC9 (struct be_adapter*) ; 
 int FUNC10 (struct be_adapter*) ; 
 int FUNC11 (struct be_adapter*) ; 
 scalar_t__ FUNC12 (struct be_adapter*,struct ethhdr*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct be_adapter*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 struct udphdr* FUNC17 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC18(struct be_adapter *adapter,
			       struct sk_buff **skb)
{
	struct ethhdr *eh = (struct ethhdr *)(*skb)->data;
	bool os2bmc = false;

	if (!FUNC1(adapter))
		goto done;

	if (!FUNC13(eh->h_dest))
		goto done;

	if (FUNC12(adapter, eh) ||
	    FUNC6(adapter, eh) ||
	    FUNC5(adapter, (*skb))) {
		os2bmc = true;
		goto done;
	}

	if ((*skb)->protocol == FUNC2(ETH_P_IPV6)) {
		struct ipv6hdr *hdr = FUNC4((*skb));
		u8 nexthdr = hdr->nexthdr;

		if (nexthdr == IPPROTO_ICMPV6) {
			struct icmp6hdr *icmp6 = FUNC3((*skb));

			switch (icmp6->icmp6_type) {
			case NDISC_ROUTER_ADVERTISEMENT:
				os2bmc = FUNC10(adapter);
				goto done;
			case NDISC_NEIGHBOUR_ADVERTISEMENT:
				os2bmc = FUNC9(adapter);
				goto done;
			default:
				break;
			}
		}
	}

	if (FUNC15((*skb))) {
		struct udphdr *udp = FUNC17((*skb));

		switch (FUNC16(udp->dest)) {
		case DHCP_CLIENT_PORT:
			os2bmc = FUNC7(adapter);
			goto done;
		case DHCP_SERVER_PORT:
			os2bmc = FUNC8(adapter);
			goto done;
		case NET_BIOS_PORT1:
		case NET_BIOS_PORT2:
			os2bmc = FUNC14(adapter);
			goto done;
		case DHCPV6_RAS_PORT:
			os2bmc = FUNC11(adapter);
			goto done;
		default:
			break;
		}
	}
done:
	/* For packets over a vlan, which are destined
	 * to BMC, asic expects the vlan to be inline in the packet.
	 */
	if (os2bmc)
		*skb = FUNC0(adapter, *skb, NULL);

	return os2bmc;
}