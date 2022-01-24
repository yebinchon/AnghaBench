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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct ipvl_dev {int /*<<< orphan*/  phy_dev; int /*<<< orphan*/  port; } ;
struct ipvl_addr {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct ethhdr* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipvl_addr* FUNC5 (int /*<<< orphan*/ ,void*,int,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int FUNC10 (struct ipvl_addr*,struct sk_buff**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct ipvl_dev* FUNC13 (struct net_device*) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct net_device *dev)
{
	const struct ipvl_dev *ipvlan = FUNC13(dev);
	struct ethhdr *eth = FUNC3(skb);
	struct ipvl_addr *addr;
	void *lyr3h;
	int addr_type;

	if (!FUNC8(ipvlan->port) &&
	    FUNC4(eth->h_dest, eth->h_source)) {
		lyr3h = FUNC6(ipvlan->port, skb, &addr_type);
		if (lyr3h) {
			addr = FUNC5(ipvlan->port, lyr3h, addr_type, true);
			if (addr) {
				if (FUNC7(ipvlan->port)) {
					FUNC0(skb);
					return NET_XMIT_DROP;
				}
				return FUNC10(addr, &skb, true);
			}
		}
		skb = FUNC14(skb, GFP_ATOMIC);
		if (!skb)
			return NET_XMIT_DROP;

		/* Packet definitely does not belong to any of the
		 * virtual devices, but the dest is local. So forward
		 * the skb for the main-dev. At the RX side we just return
		 * RX_PASS for it to be processed further on the stack.
		 */
		return FUNC1(ipvlan->phy_dev, skb);

	} else if (FUNC12(eth->h_dest)) {
		FUNC11(skb, NULL);
		FUNC9(ipvlan->port, skb, true);
		return NET_XMIT_SUCCESS;
	}

	skb->dev = ipvlan->phy_dev;
	return FUNC2(skb);
}