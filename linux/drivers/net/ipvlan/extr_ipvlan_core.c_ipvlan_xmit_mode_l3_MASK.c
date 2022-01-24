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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_dev {int /*<<< orphan*/  phy_dev; int /*<<< orphan*/  port; } ;
struct ipvl_addr {int dummy; } ;

/* Variables and functions */
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct ipvl_addr* FUNC1 (int /*<<< orphan*/ ,void*,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct ipvl_addr*,struct sk_buff**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ipvl_dev* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	const struct ipvl_dev *ipvlan = FUNC8(dev);
	void *lyr3h;
	struct ipvl_addr *addr;
	int addr_type;

	lyr3h = FUNC2(ipvlan->port, skb, &addr_type);
	if (!lyr3h)
		goto out;

	if (!FUNC4(ipvlan->port)) {
		addr = FUNC1(ipvlan->port, lyr3h, addr_type, true);
		if (addr) {
			if (FUNC3(ipvlan->port)) {
				FUNC0(skb);
				return NET_XMIT_DROP;
			}
			return FUNC6(addr, &skb, true);
		}
	}
out:
	FUNC7(skb, ipvlan->phy_dev);
	return FUNC5(skb);
}