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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ mng_cookie; } ;
struct e1000_adapter {int flags; int /*<<< orphan*/  pm_qos_req; int /*<<< orphan*/  state; int /*<<< orphan*/  mng_vlan_id; TYPE_3__ hw; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  napi; TYPE_1__* netdev; struct pci_dev* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int E1000_CHECK_RESET_COUNT ; 
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FLAG_HAS_AMT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 int /*<<< orphan*/  __E1000_TESTING ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct e1000_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

int FUNC16(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC9(netdev);
	struct pci_dev *pdev = adapter->pdev;
	int count = E1000_CHECK_RESET_COUNT;

	while (FUNC14(__E1000_RESETTING, &adapter->state) && count--)
		FUNC15(10000, 11000);

	FUNC0(FUNC14(__E1000_RESETTING, &adapter->state));

	FUNC11(&pdev->dev);

	if (!FUNC14(__E1000_DOWN, &adapter->state)) {
		FUNC3(adapter, true);
		FUNC1(adapter);

		/* Link status message must follow this format */
		FUNC13("%s NIC Link is Down\n", adapter->netdev->name);
	}

	FUNC8(&adapter->napi);

	FUNC5(adapter->tx_ring);
	FUNC4(adapter->rx_ring);

	/* kill manageability vlan ID if supported, but not if a vlan with
	 * the same ID is registered on the host OS (let 8021q kill it)
	 */
	if (adapter->hw.mng_cookie.status & E1000_MNG_DHCP_COOKIE_STATUS_VLAN)
		FUNC2(netdev, FUNC7(ETH_P_8021Q),
				       adapter->mng_vlan_id);

	/* If AMT is enabled, let the firmware know that the network
	 * interface is now closed
	 */
	if ((adapter->flags & FLAG_HAS_AMT) &&
	    !FUNC14(__E1000_TESTING, &adapter->state))
		FUNC6(adapter);

	FUNC10(&adapter->pm_qos_req);

	FUNC12(&pdev->dev);

	return 0;
}