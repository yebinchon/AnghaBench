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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rar_set ) (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  addr; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; int /*<<< orphan*/  mbx_lock; } ;
struct igbvf_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct igbvf_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, void *p)
{
	struct igbvf_adapter *adapter = FUNC3(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct sockaddr *addr = p;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(hw->mac.addr, addr->sa_data, netdev->addr_len);

	FUNC4(&hw->mbx_lock);

	hw->mac.ops.rar_set(hw, hw->mac.addr, 0);

	FUNC5(&hw->mbx_lock);

	if (!FUNC0(addr->sa_data, hw->mac.addr))
		return -EADDRNOTAVAIL;

	FUNC2(netdev->dev_addr, addr->sa_data, netdev->addr_len);

	return 0;
}