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
typedef  int u32 ;
struct slave {int /*<<< orphan*/  dev; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ protocol; } ;
struct bonding {int /*<<< orphan*/  slave_cnt; int /*<<< orphan*/  curr_active_slave; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_IGMP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct bonding*,struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 
 struct bonding* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 struct slave* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb,
					struct net_device *bond_dev)
{
	struct bonding *bond = FUNC8(bond_dev);
	struct slave *slave;
	int slave_cnt;
	u32 slave_id;

	/* Start with the curr_active_slave that joined the bond as the
	 * default for sending IGMP traffic.  For failover purposes one
	 * needs to maintain some consistency for the interface that will
	 * send the join/membership reports.  The curr_active_slave found
	 * will send all of this type of traffic.
	 */
	if (skb->protocol == FUNC5(ETH_P_IP)) {
		int noff = FUNC11(skb);
		struct iphdr *iph;

		if (FUNC12(!FUNC9(skb, noff + sizeof(*iph))))
			goto non_igmp;

		iph = FUNC6(skb);
		if (iph->protocol == IPPROTO_IGMP) {
			slave = FUNC10(bond->curr_active_slave);
			if (slave)
				FUNC1(bond, skb, slave->dev);
			else
				FUNC4(bond, skb, 0);
			return NETDEV_TX_OK;
		}
	}

non_igmp:
	slave_cnt = FUNC0(bond->slave_cnt);
	if (FUNC7(slave_cnt)) {
		slave_id = FUNC2(bond);
		FUNC4(bond, skb, slave_id % slave_cnt);
	} else {
		FUNC3(bond_dev, skb);
	}
	return NETDEV_TX_OK;
}