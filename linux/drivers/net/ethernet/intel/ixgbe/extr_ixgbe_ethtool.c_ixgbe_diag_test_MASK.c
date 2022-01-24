#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; int /*<<< orphan*/  hw_addr; } ;
struct ixgbe_adapter {int flags; int num_vfs; int /*<<< orphan*/  state; TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {scalar_t__ clear_to_send; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 int IXGBE_FLAG_SRIOV_ENABLED ; 
 int IXGBE_FLAG_VMDQ_ENABLED ; 
 int /*<<< orphan*/  __IXGBE_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 struct ixgbe_hw* hw ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct ixgbe_adapter*,int*) ; 
 scalar_t__ FUNC5 (struct ixgbe_adapter*,int*) ; 
 scalar_t__ FUNC6 (struct ixgbe_adapter*,int*) ; 
 scalar_t__ FUNC7 (struct ixgbe_adapter*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct ixgbe_adapter*,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct ixgbe_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*) ; 
 int FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbe_hw*) ; 

__attribute__((used)) static void FUNC18(struct net_device *netdev,
			    struct ethtool_test *eth_test, u64 *data)
{
	struct ixgbe_adapter *adapter = FUNC13(netdev);
	bool if_running = FUNC15(netdev);

	if (FUNC10(adapter->hw.hw_addr)) {
		FUNC1(hw, "Adapter removed - test blocked\n");
		data[0] = 1;
		data[1] = 1;
		data[2] = 1;
		data[3] = 1;
		data[4] = 1;
		eth_test->flags |= ETH_TEST_FL_FAILED;
		return;
	}
	FUNC16(__IXGBE_TESTING, &adapter->state);
	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		struct ixgbe_hw *hw = &adapter->hw;

		if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {
			int i;
			for (i = 0; i < adapter->num_vfs; i++) {
				if (adapter->vfinfo[i].clear_to_send) {
					FUNC14(netdev, "offline diagnostic is not supported when VFs are present\n");
					data[0] = 1;
					data[1] = 1;
					data[2] = 1;
					data[3] = 1;
					data[4] = 1;
					eth_test->flags |= ETH_TEST_FL_FAILED;
					FUNC0(__IXGBE_TESTING,
						  &adapter->state);
					goto skip_ol_tests;
				}
			}
		}

		/* Offline tests */
		FUNC2(hw, "offline testing starting\n");

		/* Link test performed before hardware reset so autoneg doesn't
		 * interfere with test result
		 */
		if (FUNC6(adapter, &data[4]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		if (if_running)
			/* indicate we're in test mode */
			FUNC3(netdev);
		else
			FUNC11(adapter);

		FUNC2(hw, "register testing starting\n");
		if (FUNC9(adapter, &data[0]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC11(adapter);
		FUNC2(hw, "eeprom testing starting\n");
		if (FUNC4(adapter, &data[1]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC11(adapter);
		FUNC2(hw, "interrupt testing starting\n");
		if (FUNC5(adapter, &data[2]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* If SRIOV or VMDq is enabled then skip MAC
		 * loopback diagnostic. */
		if (adapter->flags & (IXGBE_FLAG_SRIOV_ENABLED |
				      IXGBE_FLAG_VMDQ_ENABLED)) {
			FUNC2(hw, "Skip MAC loopback diagnostic in VT mode\n");
			data[3] = 0;
			goto skip_loopback;
		}

		FUNC11(adapter);
		FUNC2(hw, "loopback testing starting\n");
		if (FUNC7(adapter, &data[3]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

skip_loopback:
		FUNC11(adapter);

		/* clear testing bit and return adapter to previous state */
		FUNC0(__IXGBE_TESTING, &adapter->state);
		if (if_running)
			FUNC8(netdev);
		else if (hw->mac.ops.disable_tx_laser)
			hw->mac.ops.disable_tx_laser(hw);
	} else {
		FUNC2(hw, "online testing starting\n");

		/* Online tests */
		if (FUNC6(adapter, &data[4]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* Offline tests aren't run; pass by default */
		data[0] = 0;
		data[1] = 0;
		data[2] = 0;
		data[3] = 0;

		FUNC0(__IXGBE_TESTING, &adapter->state);
	}

skip_ol_tests:
	FUNC12(4 * 1000);
}