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
struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int mng_vlan_id; int /*<<< orphan*/  active_vlans; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ; 
 int FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VFTA ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int,int) ; 
 struct e1000_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
				 __be16 proto, u16 vid)
{
	struct e1000_adapter *adapter = FUNC4(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 vfta, index;

	if ((hw->mng_cookie.status &
	     E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT) &&
	    (vid == adapter->mng_vlan_id))
		return 0;

	if (!FUNC2(adapter))
		FUNC1(adapter, true);

	/* add VID to filter table */
	index = (vid >> 5) & 0x7F;
	vfta = FUNC0(hw, VFTA, index);
	vfta |= (1 << (vid & 0x1F));
	FUNC3(hw, index, vfta);

	FUNC5(vid, adapter->active_vlans);

	return 0;
}