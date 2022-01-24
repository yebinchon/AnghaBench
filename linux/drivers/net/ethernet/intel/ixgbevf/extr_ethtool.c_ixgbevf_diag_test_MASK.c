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
typedef  int u64 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_addr; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  state; TYPE_2__ hw; TYPE_1__* pdev; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBEVF_TESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct ixgbevf_adapter*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct ixgbevf_adapter*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct ixgbevf_adapter* FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct net_device *netdev,
			      struct ethtool_test *eth_test, u64 *data)
{
	struct ixgbevf_adapter *adapter = FUNC10(netdev);
	bool if_running = FUNC11(netdev);

	if (FUNC0(adapter->hw.hw_addr)) {
		FUNC2(&adapter->pdev->dev,
			"Adapter removed - test blocked\n");
		data[0] = 1;
		data[1] = 1;
		eth_test->flags |= ETH_TEST_FL_FAILED;
		return;
	}
	FUNC12(__IXGBEVF_TESTING, &adapter->state);
	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		/* Offline tests */

		FUNC3(&adapter->hw, "offline testing starting\n");

		/* Link test performed before hardware reset so autoneg doesn't
		 * interfere with test result
		 */
		if (FUNC5(adapter, &data[1]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		if (if_running)
			/* indicate we're in test mode */
			FUNC4(netdev);
		else
			FUNC8(adapter);

		FUNC3(&adapter->hw, "register testing starting\n");
		if (FUNC7(adapter, &data[0]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC8(adapter);

		FUNC1(__IXGBEVF_TESTING, &adapter->state);
		if (if_running)
			FUNC6(netdev);
	} else {
		FUNC3(&adapter->hw, "online testing starting\n");
		/* Online tests */
		if (FUNC5(adapter, &data[1]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* Online tests aren't run; pass by default */
		data[0] = 0;

		FUNC1(__IXGBEVF_TESTING, &adapter->state);
	}
	FUNC9(4 * 1000);
}