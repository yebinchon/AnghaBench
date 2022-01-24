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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct slave {int /*<<< orphan*/  dev; TYPE_1__* bond; } ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  priority; int /*<<< orphan*/  protocol; scalar_t__ mac_header; scalar_t__ network_header; } ;
struct learning_pkt {int /*<<< orphan*/  type; int /*<<< orphan*/  mac_src; int /*<<< orphan*/  mac_dst; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_LOOPBACK ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct learning_pkt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct learning_pkt*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct slave *slave, u8 mac_addr[],
			    __be16 vlan_proto, u16 vid)
{
	struct learning_pkt pkt;
	struct sk_buff *skb;
	int size = sizeof(struct learning_pkt);

	FUNC5(&pkt, 0, size);
	FUNC4(pkt.mac_dst, mac_addr);
	FUNC4(pkt.mac_src, mac_addr);
	pkt.type = FUNC1(ETH_P_LOOPBACK);

	skb = FUNC2(size);
	if (!skb)
		return;

	FUNC6(skb, &pkt, size);

	FUNC7(skb);
	skb->network_header = skb->mac_header + ETH_HLEN;
	skb->protocol = pkt.type;
	skb->priority = TC_PRIO_CONTROL;
	skb->dev = slave->dev;

	FUNC8(slave->bond->dev, slave->dev,
		  "Send learning packet: mac %pM vlan %d\n", mac_addr, vid);

	if (vid)
		FUNC0(skb, vlan_proto, vid);

	FUNC3(skb);
}