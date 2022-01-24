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
struct e1000_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int E1000_CHECK_RESET_COUNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 struct net_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 struct e1000_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct net_device *netdev = FUNC1(dev);
	struct e1000_adapter *adapter = FUNC6(netdev);

	FUNC7(netdev);

	if (FUNC8(netdev)) {
		int count = E1000_CHECK_RESET_COUNT;

		while (FUNC9(__E1000_RESETTING, &adapter->state) && count--)
			FUNC10(10000, 11000);

		FUNC0(FUNC9(__E1000_RESETTING, &adapter->state));

		/* Quiesce the device without resetting the hardware */
		FUNC4(adapter, false);
		FUNC2(adapter);
	}
	FUNC5(adapter);

	/* Allow time for pending master requests to run */
	FUNC3(&adapter->hw);

	return 0;
}