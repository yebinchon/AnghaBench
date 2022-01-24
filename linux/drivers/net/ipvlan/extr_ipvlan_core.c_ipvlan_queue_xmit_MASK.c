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
struct ipvl_port {int mode; } ;
struct ipvl_dev {int /*<<< orphan*/  phy_dev; } ;
struct ethhdr {int dummy; } ;

/* Variables and functions */
#define  IPVLAN_MODE_L2 130 
#define  IPVLAN_MODE_L3 129 
#define  IPVLAN_MODE_L3S 128 
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 struct ipvl_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct net_device*) ; 
 int FUNC3 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct ipvl_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct ipvl_dev *ipvlan = FUNC5(dev);
	struct ipvl_port *port = FUNC1(ipvlan->phy_dev);

	if (!port)
		goto out;

	if (FUNC7(!FUNC6(skb, sizeof(struct ethhdr))))
		goto out;

	switch(port->mode) {
	case IPVLAN_MODE_L2:
		return FUNC2(skb, dev);
	case IPVLAN_MODE_L3:
#ifdef CONFIG_IPVLAN_L3S
	case IPVLAN_MODE_L3S:
#endif
		return FUNC3(skb, dev);
	}

	/* Should not reach here */
	FUNC0(true, "ipvlan_queue_xmit() called for mode = [%hx]\n",
			  port->mode);
out:
	FUNC4(skb);
	return NET_XMIT_DROP;
}