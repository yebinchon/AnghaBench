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
struct sk_buff {scalar_t__ protocol; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int ihl; int protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  ports; } ;
struct flow_keys {TYPE_2__ ports; } ;
struct TYPE_3__ {scalar_t__ xmit_policy; } ;
struct bonding {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ BOND_XMIT_POLICY_LAYER23 ; 
 scalar_t__ BOND_XMIT_POLICY_LAYER34 ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_keys*,struct iphdr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_keys*,struct ipv6hdr const*) ; 
 struct ipv6hdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (struct sk_buff*,struct flow_keys*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static bool FUNC11(struct bonding *bond, struct sk_buff *skb,
			      struct flow_keys *fk)
{
	const struct ipv6hdr *iph6;
	const struct iphdr *iph;
	int noff, proto = -1;

	if (bond->params.xmit_policy > BOND_XMIT_POLICY_LAYER23)
		return FUNC7(skb, fk, 0);

	fk->ports.ports = 0;
	noff = FUNC9(skb);
	if (skb->protocol == FUNC0(ETH_P_IP)) {
		if (FUNC10(!FUNC6(skb, noff + sizeof(*iph))))
			return false;
		iph = FUNC1(skb);
		FUNC3(fk, iph);
		noff += iph->ihl << 2;
		if (!FUNC2(iph))
			proto = iph->protocol;
	} else if (skb->protocol == FUNC0(ETH_P_IPV6)) {
		if (FUNC10(!FUNC6(skb, noff + sizeof(*iph6))))
			return false;
		iph6 = FUNC5(skb);
		FUNC4(fk, iph6);
		noff += sizeof(*iph6);
		proto = iph6->nexthdr;
	} else {
		return false;
	}
	if (bond->params.xmit_policy == BOND_XMIT_POLICY_LAYER34 && proto >= 0)
		fk->ports.ports = FUNC8(skb, noff, proto);

	return true;
}