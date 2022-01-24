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
struct net_device {int dummy; } ;
struct atl1e_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int MDIO_REG_ADDR_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct atl1e_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev, int phy_id,
			     int reg_num, int val)
{
	struct atl1e_adapter *adapter = FUNC2(netdev);

	if (FUNC0(&adapter->hw,
				reg_num & MDIO_REG_ADDR_MASK, val))
		FUNC1(netdev, "write phy register failed\n");
}