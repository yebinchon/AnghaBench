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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct TYPE_3__ {int status; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int flags; scalar_t__ int_mode; int tx_hang_recheck; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  pm_qos_req; int /*<<< orphan*/  napi; int /*<<< orphan*/  state; struct e1000_hw hw; int /*<<< orphan*/  mng_vlan_id; struct pci_dev* pdev; } ;

/* Variables and functions */
 scalar_t__ E1000E_INT_MODE_LEGACY ; 
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN ; 
 int /*<<< orphan*/  E1000_MNG_VLAN_NONE ; 
 int EBUSY ; 
 int FLAG_HAS_AMT ; 
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  __E1000_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int FUNC4 (struct e1000_adapter*) ; 
 int FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct e1000_adapter*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct e1000_adapter* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC27(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC18(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct pci_dev *pdev = adapter->pdev;
	int err;

	/* disallow open during test */
	if (FUNC26(__E1000_TESTING, &adapter->state))
		return -EBUSY;

	FUNC23(&pdev->dev);

	FUNC19(netdev);
	FUNC20(netdev);

	/* allocate transmit descriptors */
	err = FUNC14(adapter->tx_ring);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC13(adapter->rx_ring);
	if (err)
		goto err_setup_rx;

	/* If AMT is enabled, let the firmware know that the network
	 * interface is now open and reset the part to a known state.
	 */
	if (adapter->flags & FLAG_HAS_AMT) {
		FUNC9(adapter);
		FUNC12(adapter);
	}

	FUNC10(adapter);

	adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
	if ((adapter->hw.mng_cookie.status & E1000_MNG_DHCP_COOKIE_STATUS_VLAN))
		FUNC6(adapter);

	/* DMA latency requirement to workaround jumbo issue */
	FUNC21(&adapter->pm_qos_req, PM_QOS_CPU_DMA_LATENCY,
			   PM_QOS_DEFAULT_VALUE);

	/* before we allocate an interrupt, we must be ready to handle it.
	 * Setting DEBUG_SHIRQ in the kernel makes it fire an interrupt
	 * as soon as we call pci_request_irq, so we have to setup our
	 * clean_rx handler before we do so.
	 */
	FUNC1(adapter);

	err = FUNC4(adapter);
	if (err)
		goto err_req_irq;

	/* Work around PCIe errata with MSI interrupts causing some chipsets to
	 * ignore e1000e MSI messages, which means we need to test our MSI
	 * interrupt now
	 */
	if (adapter->int_mode != E1000E_INT_MODE_LEGACY) {
		err = FUNC5(adapter);
		if (err) {
			FUNC16("Interrupt allocation failed\n");
			goto err_req_irq;
		}
	}

	/* From here on the code is the same as e1000e_up() */
	FUNC0(__E1000_DOWN, &adapter->state);

	FUNC17(&adapter->napi);

	FUNC2(adapter);

	adapter->tx_hang_recheck = false;

	hw->mac.get_link_status = true;
	FUNC24(&pdev->dev);

	FUNC15(adapter);

	return 0;

err_req_irq:
	FUNC22(&adapter->pm_qos_req);
	FUNC11(adapter);
	FUNC3(adapter);
	FUNC7(adapter->rx_ring);
err_setup_rx:
	FUNC8(adapter->tx_ring);
err_setup_tx:
	FUNC12(adapter);
	FUNC25(&pdev->dev);

	return err;
}