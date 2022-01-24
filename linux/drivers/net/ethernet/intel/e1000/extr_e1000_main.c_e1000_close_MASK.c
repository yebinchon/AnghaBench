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
struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int /*<<< orphan*/  mng_vlan_id; int /*<<< orphan*/ * active_vlans; int /*<<< orphan*/  flags; struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_CHECK_RESET_COUNT ; 
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

int FUNC11(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int count = E1000_CHECK_RESET_COUNT;

	while (FUNC9(__E1000_RESETTING, &adapter->flags) && count--)
		FUNC10(10000, 20000);

	FUNC0(FUNC9(__E1000_RESETTING, &adapter->flags));
	FUNC1(adapter);
	FUNC5(adapter);
	FUNC4(adapter);

	FUNC3(adapter);
	FUNC2(adapter);

	/* kill manageability vlan ID if supported, but not if a vlan with
	 * the same ID is registered on the host OS (let 8021q kill it)
	 */
	if ((hw->mng_cookie.status &
	     E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT) &&
	    !FUNC9(adapter->mng_vlan_id, adapter->active_vlans)) {
		FUNC6(netdev, FUNC7(ETH_P_8021Q),
				       adapter->mng_vlan_id);
	}

	return 0;
}