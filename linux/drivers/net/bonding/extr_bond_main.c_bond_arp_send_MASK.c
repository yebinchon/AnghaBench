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
struct slave {TYPE_1__* bond; struct net_device* dev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct bond_vlan_tag {int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  vlan_proto; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net_device*,char*,int,int /*<<< orphan*/ ,...) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct slave *slave, int arp_op, __be32 dest_ip,
			  __be32 src_ip, struct bond_vlan_tag *tags)
{
	struct sk_buff *skb;
	struct bond_vlan_tag *outer_tag = tags;
	struct net_device *slave_dev = slave->dev;
	struct net_device *bond_dev = slave->bond->dev;

	FUNC5(bond_dev, slave_dev, "arp %d on slave: dst %pI4 src %pI4\n",
		  arp_op, dest_ip, &src_ip);

	skb = FUNC1(arp_op, ETH_P_ARP, dest_ip, slave_dev, src_ip,
			 NULL, slave_dev->dev_addr, NULL);

	if (!skb) {
		FUNC3("ARP packet allocation failed\n");
		return;
	}

	if (!tags || tags->vlan_proto == VLAN_N_VID)
		goto xmit;

	tags++;

	/* Go through all the tags backwards and add them to the packet */
	while (tags->vlan_proto != VLAN_N_VID) {
		if (!tags->vlan_id) {
			tags++;
			continue;
		}

		FUNC5(bond_dev, slave_dev, "inner tag: proto %X vid %X\n",
			  FUNC4(outer_tag->vlan_proto), tags->vlan_id);
		skb = FUNC6(skb, tags->vlan_proto,
						tags->vlan_id);
		if (!skb) {
			FUNC3("failed to insert inner VLAN tag\n");
			return;
		}

		tags++;
	}
	/* Set the outer tag */
	if (outer_tag->vlan_id) {
		FUNC5(bond_dev, slave_dev, "outer tag: proto %X vid %X\n",
			  FUNC4(outer_tag->vlan_proto), outer_tag->vlan_id);
		FUNC0(skb, outer_tag->vlan_proto,
				       outer_tag->vlan_id);
	}

xmit:
	FUNC2(skb);
}