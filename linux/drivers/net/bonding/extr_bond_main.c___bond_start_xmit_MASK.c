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
struct bonding {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int FUNC0 (struct bonding*) ; 
#define  BOND_MODE_8023AD 134 
#define  BOND_MODE_ACTIVEBACKUP 133 
#define  BOND_MODE_ALB 132 
#define  BOND_MODE_BROADCAST 131 
#define  BOND_MODE_ROUNDROBIN 130 
#define  BOND_MODE_TLB 129 
#define  BOND_MODE_XOR 128 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC4 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,int) ; 
 struct bonding* FUNC12 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb, struct net_device *dev)
{
	struct bonding *bond = FUNC12(dev);

	if (FUNC4(bond) &&
	    !FUNC5(bond, skb))
		return NETDEV_TX_OK;

	switch (FUNC0(bond)) {
	case BOND_MODE_ROUNDROBIN:
		return FUNC10(skb, dev);
	case BOND_MODE_ACTIVEBACKUP:
		return FUNC8(skb, dev);
	case BOND_MODE_8023AD:
	case BOND_MODE_XOR:
		return FUNC2(skb, dev);
	case BOND_MODE_BROADCAST:
		return FUNC9(skb, dev);
	case BOND_MODE_ALB:
		return FUNC3(skb, dev);
	case BOND_MODE_TLB:
		return FUNC6(skb, dev);
	default:
		/* Should never happen, mode already checked */
		FUNC11(dev, "Unknown bonding mode %d\n", FUNC0(bond));
		FUNC1(1);
		FUNC7(dev, skb);
		return NETDEV_TX_OK;
	}
}