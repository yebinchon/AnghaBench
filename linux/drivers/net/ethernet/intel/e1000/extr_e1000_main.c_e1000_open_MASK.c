#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; int /*<<< orphan*/  mng_vlan_id; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ICS_LSC ; 
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ; 
 int /*<<< orphan*/  E1000_MNG_VLAN_NONE ; 
 int E1000_SUCCESS ; 
 int EBUSY ; 
 int /*<<< orphan*/  ICS ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  __E1000_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int FUNC7 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*) ; 
 int FUNC9 (struct e1000_adapter*) ; 
 int FUNC10 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct e1000_adapter* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC18(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC14(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int err;

	/* disallow open during test */
	if (FUNC17(__E1000_TESTING, &adapter->flags))
		return -EBUSY;

	FUNC15(netdev);

	/* allocate transmit descriptors */
	err = FUNC10(adapter);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC9(adapter);
	if (err)
		goto err_setup_rx;

	FUNC6(adapter);

	adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
	if ((hw->mng_cookie.status &
			  E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT)) {
		FUNC11(adapter);
	}

	/* before we allocate an interrupt, we must be ready to handle it.
	 * Setting DEBUG_SHIRQ in the kernel makes it fire an interrupt
	 * as soon as we call pci_request_irq, so we have to setup our
	 * clean_rx handler before we do so.
	 */
	FUNC1(adapter);

	err = FUNC7(adapter);
	if (err)
		goto err_req_irq;

	/* From here on the code is the same as e1000_up() */
	FUNC0(__E1000_DOWN, &adapter->flags);

	FUNC13(&adapter->napi);

	FUNC4(adapter);

	FUNC16(netdev);

	/* fire a link status change interrupt to start the watchdog */
	FUNC12(ICS, E1000_ICS_LSC);

	return E1000_SUCCESS;

err_req_irq:
	FUNC5(adapter);
	FUNC2(adapter);
err_setup_rx:
	FUNC3(adapter);
err_setup_tx:
	FUNC8(adapter);

	return err;
}