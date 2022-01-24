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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct e1000_hw {scalar_t__ mac_type; int /*<<< orphan*/  mac_addr; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 scalar_t__ e1000_82542_rev2_0 ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, void *p)
{
	struct e1000_adapter *adapter = FUNC5(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct sockaddr *addr = p;

	if (!FUNC3(addr->sa_data))
		return -EADDRNOTAVAIL;

	/* 82542 2.0 needs to be in reset to write receive address registers */

	if (hw->mac_type == e1000_82542_rev2_0)
		FUNC0(adapter);

	FUNC4(netdev->dev_addr, addr->sa_data, netdev->addr_len);
	FUNC4(hw->mac_addr, addr->sa_data, netdev->addr_len);

	FUNC2(hw, hw->mac_addr, 0);

	if (hw->mac_type == e1000_82542_rev2_0)
		FUNC1(adapter);

	return 0;
}