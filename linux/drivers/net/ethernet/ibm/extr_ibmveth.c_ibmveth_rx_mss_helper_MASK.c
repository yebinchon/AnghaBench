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
typedef  scalar_t__ u16 ;
struct tcphdr {int doff; scalar_t__ check; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; scalar_t__ data; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct TYPE_2__ {scalar_t__ gso_size; int /*<<< orphan*/  gso_segs; int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, u16 mss, int lrg_pkt)
{
	struct tcphdr *tcph;
	int offset = 0;
	int hdr_len;

	/* only TCP packets will be aggregated */
	if (skb->protocol == FUNC1(ETH_P_IP)) {
		struct iphdr *iph = (struct iphdr *)skb->data;

		if (iph->protocol == IPPROTO_TCP) {
			offset = iph->ihl * 4;
			FUNC3(skb)->gso_type = SKB_GSO_TCPV4;
		} else {
			return;
		}
	} else if (skb->protocol == FUNC1(ETH_P_IPV6)) {
		struct ipv6hdr *iph6 = (struct ipv6hdr *)skb->data;

		if (iph6->nexthdr == IPPROTO_TCP) {
			offset = sizeof(struct ipv6hdr);
			FUNC3(skb)->gso_type = SKB_GSO_TCPV6;
		} else {
			return;
		}
	} else {
		return;
	}
	/* if mss is not set through Large Packet bit/mss in rx buffer,
	 * expect that the mss will be written to the tcp header checksum.
	 */
	tcph = (struct tcphdr *)(skb->data + offset);
	if (lrg_pkt) {
		FUNC3(skb)->gso_size = mss;
	} else if (offset) {
		FUNC3(skb)->gso_size = FUNC2(tcph->check);
		tcph->check = 0;
	}

	if (FUNC3(skb)->gso_size) {
		hdr_len = offset + tcph->doff * 4;
		FUNC3(skb)->gso_segs =
				FUNC0(skb->len - hdr_len,
					     FUNC3(skb)->gso_size);
	}
}