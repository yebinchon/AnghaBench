#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int (* set_rar ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  mbx_lock; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ixgbevf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, void *p)
{
	struct ixgbevf_adapter *adapter = FUNC2(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	struct sockaddr *addr = p;
	int err;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC3(&adapter->mbx_lock);

	err = hw->mac.ops.set_rar(hw, 0, addr->sa_data, 0);

	FUNC4(&adapter->mbx_lock);

	if (err)
		return -EPERM;

	FUNC0(hw->mac.addr, addr->sa_data);
	FUNC0(hw->mac.perm_addr, addr->sa_data);
	FUNC0(netdev->dev_addr, addr->sa_data);

	return 0;
}