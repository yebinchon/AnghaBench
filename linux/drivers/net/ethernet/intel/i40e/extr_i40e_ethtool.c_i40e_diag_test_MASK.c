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
struct i40e_pf {int /*<<< orphan*/  state; TYPE_2__* pdev; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 size_t I40E_ETH_TEST_EEPROM ; 
 size_t I40E_ETH_TEST_INTR ; 
 size_t I40E_ETH_TEST_LINK ; 
 size_t I40E_ETH_TEST_REG ; 
 int /*<<< orphan*/  __I40E_PF_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_TESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC3 (struct i40e_pf*) ; 
 scalar_t__ FUNC4 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_pf*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct net_device*,int*) ; 
 scalar_t__ FUNC8 (struct net_device*,int*) ; 
 scalar_t__ FUNC9 (struct net_device*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*,int*) ; 
 struct i40e_netdev_priv* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_pf*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct net_device *netdev,
			   struct ethtool_test *eth_test, u64 *data)
{
	struct i40e_netdev_priv *np = FUNC12(netdev);
	bool if_running = FUNC14(netdev);
	struct i40e_pf *pf = np->vsi->back;

	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		/* Offline tests */
		FUNC13(pf, drv, netdev, "offline testing starting\n");

		FUNC15(__I40E_TESTING, pf->state);

		if (FUNC3(pf) || FUNC4(pf)) {
			FUNC2(&pf->pdev->dev,
				 "Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\n");
			data[I40E_ETH_TEST_REG]		= 1;
			data[I40E_ETH_TEST_EEPROM]	= 1;
			data[I40E_ETH_TEST_INTR]	= 1;
			data[I40E_ETH_TEST_LINK]	= 1;
			eth_test->flags |= ETH_TEST_FL_FAILED;
			FUNC1(__I40E_TESTING, pf->state);
			goto skip_ol_tests;
		}

		/* If the device is online then take it offline */
		if (if_running)
			/* indicate we're in test mode */
			FUNC5(netdev);
		else
			/* This reset does not affect link - if it is
			 * changed to a type of reset that does affect
			 * link then the following link test would have
			 * to be moved to before the reset
			 */
			FUNC6(pf, FUNC0(__I40E_PF_RESET_REQUESTED), true);

		if (FUNC9(netdev, &data[I40E_ETH_TEST_LINK]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		if (FUNC7(netdev, &data[I40E_ETH_TEST_EEPROM]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		if (FUNC8(netdev, &data[I40E_ETH_TEST_INTR]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* run reg test last, a reset is required after it */
		if (FUNC11(netdev, &data[I40E_ETH_TEST_REG]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC1(__I40E_TESTING, pf->state);
		FUNC6(pf, FUNC0(__I40E_PF_RESET_REQUESTED), true);

		if (if_running)
			FUNC10(netdev);
	} else {
		/* Online tests */
		FUNC13(pf, drv, netdev, "online testing starting\n");

		if (FUNC9(netdev, &data[I40E_ETH_TEST_LINK]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* Offline only tests, not run in online; pass by default */
		data[I40E_ETH_TEST_REG] = 0;
		data[I40E_ETH_TEST_EEPROM] = 0;
		data[I40E_ETH_TEST_INTR] = 0;
	}

skip_ol_tests:

	FUNC13(pf, drv, netdev, "testing finished\n");
}