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
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int flags; TYPE_1__* rx_ring; int /*<<< orphan*/  active_vlans; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int E1000_RXDEXT_STATERR_LB ; 
 int E1000_RXD_SPC_VLAN_MASK ; 
 int E1000_RXD_STAT_VP ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IGBVF_FLAG_RX_LB_VLAN_BSWAP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct igbvf_adapter *adapter,
			      struct net_device *netdev,
			      struct sk_buff *skb,
			      u32 status, u16 vlan)
{
	u16 vid;

	if (status & E1000_RXD_STAT_VP) {
		if ((adapter->flags & IGBVF_FLAG_RX_LB_VLAN_BSWAP) &&
		    (status & E1000_RXDEXT_STATERR_LB))
			vid = FUNC1(vlan) & E1000_RXD_SPC_VLAN_MASK;
		else
			vid = FUNC3(vlan) & E1000_RXD_SPC_VLAN_MASK;
		if (FUNC5(vid, adapter->active_vlans))
			FUNC0(skb, FUNC2(ETH_P_8021Q), vid);
	}

	FUNC4(&adapter->rx_ring->napi, skb);
}