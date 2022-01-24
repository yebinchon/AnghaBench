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
struct sk_buff {int len; int /*<<< orphan*/  pkt_type; struct net_device* dev; } ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct macvlan_dev {struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_UP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macvlan_dev*,int,int,int) ; 
 int FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb,
				       struct macvlan_dev *vlan)
{
	struct sk_buff *nskb;
	struct net_device *dev;
	int len;
	int ret;

	dev = vlan->dev;
	if (FUNC5(!(dev->flags & IFF_UP)))
		return;

	nskb = FUNC4(skb, GFP_ATOMIC);
	if (!nskb)
		return;

	len = nskb->len + ETH_HLEN;
	nskb->dev = dev;

	if (FUNC1(FUNC0(skb)->h_dest, dev->dev_addr))
		nskb->pkt_type = PACKET_HOST;

	ret = FUNC3(nskb);
	FUNC2(vlan, len, ret == NET_RX_SUCCESS, false);
}