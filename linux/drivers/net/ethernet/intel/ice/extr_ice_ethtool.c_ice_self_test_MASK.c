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
struct ice_pf {int /*<<< orphan*/  int_name; TYPE_2__* pdev; int /*<<< orphan*/  state; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct ice_pf* back; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 size_t ICE_ETH_TEST_EEPROM ; 
 size_t ICE_ETH_TEST_INTR ; 
 size_t ICE_ETH_TEST_LINK ; 
 size_t ICE_ETH_TEST_LOOP ; 
 size_t ICE_ETH_TEST_REG ; 
 int /*<<< orphan*/  __ICE_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct ice_pf*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*) ; 
 struct ice_netdev_priv* FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct net_device *netdev, struct ethtool_test *eth_test,
	      u64 *data)
{
	struct ice_netdev_priv *np = FUNC12(netdev);
	bool if_running = FUNC13(netdev);
	struct ice_pf *pf = np->vsi->back;

	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		FUNC11(netdev, "offline testing starting\n");

		FUNC14(__ICE_TESTING, pf->state);

		if (FUNC3(pf)) {
			FUNC2(&pf->pdev->dev,
				 "Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\n");
			data[ICE_ETH_TEST_REG] = 1;
			data[ICE_ETH_TEST_EEPROM] = 1;
			data[ICE_ETH_TEST_INTR] = 1;
			data[ICE_ETH_TEST_LOOP] = 1;
			data[ICE_ETH_TEST_LINK] = 1;
			eth_test->flags |= ETH_TEST_FL_FAILED;
			FUNC0(__ICE_TESTING, pf->state);
			goto skip_ol_tests;
		}
		/* If the device is online then take it offline */
		if (if_running)
			/* indicate we're in test mode */
			FUNC10(netdev);

		data[ICE_ETH_TEST_LINK] = FUNC6(netdev);
		data[ICE_ETH_TEST_EEPROM] = FUNC4(netdev);
		data[ICE_ETH_TEST_INTR] = FUNC5(netdev);
		data[ICE_ETH_TEST_LOOP] = FUNC7(netdev);
		data[ICE_ETH_TEST_REG] = FUNC9(netdev);

		if (data[ICE_ETH_TEST_LINK] ||
		    data[ICE_ETH_TEST_EEPROM] ||
		    data[ICE_ETH_TEST_LOOP] ||
		    data[ICE_ETH_TEST_INTR] ||
		    data[ICE_ETH_TEST_REG])
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC0(__ICE_TESTING, pf->state);

		if (if_running) {
			int status = FUNC8(netdev);

			if (status) {
				FUNC1(&pf->pdev->dev,
					"Could not open device %s, err %d",
					pf->int_name, status);
			}
		}
	} else {
		/* Online tests */
		FUNC11(netdev, "online testing starting\n");

		data[ICE_ETH_TEST_LINK] = FUNC6(netdev);
		if (data[ICE_ETH_TEST_LINK])
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* Offline only tests, not run in online; pass by default */
		data[ICE_ETH_TEST_REG] = 0;
		data[ICE_ETH_TEST_EEPROM] = 0;
		data[ICE_ETH_TEST_INTR] = 0;
		data[ICE_ETH_TEST_LOOP] = 0;
	}

skip_ol_tests:
	FUNC11(netdev, "testing finished\n");
}