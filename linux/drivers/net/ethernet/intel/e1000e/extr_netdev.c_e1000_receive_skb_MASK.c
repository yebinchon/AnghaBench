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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int E1000_RXD_STAT_VP ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct e1000_adapter *adapter,
			      struct net_device *netdev, struct sk_buff *skb,
			      u32 staterr, __le16 vlan)
{
	u16 tag = FUNC4(vlan);

	FUNC1(adapter, staterr, skb);

	skb->protocol = FUNC2(skb, netdev);

	if (staterr & E1000_RXD_STAT_VP)
		FUNC0(skb, FUNC3(ETH_P_8021Q), tag);

	FUNC5(&adapter->napi, skb);
}