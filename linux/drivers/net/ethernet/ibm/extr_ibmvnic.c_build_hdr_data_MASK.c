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
typedef  int u8 ;
struct vlan_ethhdr {int dummy; } ;
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  dev; } ;
struct ipv6hdr {int dummy; } ;
struct ethhdr {int dummy; } ;
struct TYPE_4__ {int ihl; scalar_t__ protocol; } ;
struct TYPE_3__ {scalar_t__ nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC6 (struct sk_buff*) ; 
 int* FUNC7 (struct sk_buff*) ; 
 int* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(u8 hdr_field, struct sk_buff *skb,
			  int *hdr_len, u8 *hdr_data)
{
	int len = 0;
	u8 *hdr;

	if (FUNC10(skb) && !FUNC9(skb))
		hdr_len[0] = sizeof(struct vlan_ethhdr);
	else
		hdr_len[0] = sizeof(struct ethhdr);

	if (skb->protocol == FUNC1(ETH_P_IP)) {
		hdr_len[1] = FUNC2(skb)->ihl * 4;
		if (FUNC2(skb)->protocol == IPPROTO_TCP)
			hdr_len[2] = FUNC11(skb);
		else if (FUNC2(skb)->protocol == IPPROTO_UDP)
			hdr_len[2] = sizeof(struct udphdr);
	} else if (skb->protocol == FUNC1(ETH_P_IPV6)) {
		hdr_len[1] = sizeof(struct ipv6hdr);
		if (FUNC3(skb)->nexthdr == IPPROTO_TCP)
			hdr_len[2] = FUNC11(skb);
		else if (FUNC3(skb)->nexthdr == IPPROTO_UDP)
			hdr_len[2] = sizeof(struct udphdr);
	} else if (skb->protocol == FUNC1(ETH_P_ARP)) {
		hdr_len[1] = FUNC0(skb->dev);
		hdr_len[2] = 0;
	}

	FUNC5(hdr_data, 0, 120);
	if ((hdr_field >> 6) & 1) {
		hdr = FUNC6(skb);
		FUNC4(hdr_data, hdr, hdr_len[0]);
		len += hdr_len[0];
	}

	if ((hdr_field >> 5) & 1) {
		hdr = FUNC7(skb);
		FUNC4(hdr_data + len, hdr, hdr_len[1]);
		len += hdr_len[1];
	}

	if ((hdr_field >> 4) & 1) {
		hdr = FUNC8(skb);
		FUNC4(hdr_data + len, hdr, hdr_len[2]);
		len += hdr_len[2];
	}
	return len;
}