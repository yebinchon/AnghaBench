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
struct sk_buff {int /*<<< orphan*/  pkt_type; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  broadcast; } ;
struct macvlan_dev {struct net_device* dev; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 int /*<<< orphan*/  PACKET_MULTICAST ; 
 int FUNC0 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
				 const struct macvlan_dev *vlan,
				 const struct ethhdr *eth, bool local)
{
	struct net_device *dev = vlan->dev;

	if (local)
		return FUNC0(dev, skb);

	skb->dev = dev;
	if (FUNC1(eth->h_dest, dev->broadcast))
		skb->pkt_type = PACKET_BROADCAST;
	else
		skb->pkt_type = PACKET_MULTICAST;

	return 0;
}