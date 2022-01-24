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
struct ixgbe_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

int FUNC6(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC4(netdev);

	FUNC2(adapter);

	if (FUNC5(netdev))
		FUNC0(adapter);

	FUNC1(adapter);

	FUNC3(adapter);

	return 0;
}