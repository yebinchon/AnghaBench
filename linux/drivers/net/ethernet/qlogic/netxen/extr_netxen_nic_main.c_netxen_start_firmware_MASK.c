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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ port_type; int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {scalar_t__ need_fw_reset; TYPE_1__ ahw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_CMDPEG_STATE ; 
 int /*<<< orphan*/  CRB_DMA_SHIFT ; 
 int /*<<< orphan*/  CRB_DRIVER_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NETXEN_MAC_ADDR_CNTL_REG ; 
 int /*<<< orphan*/  NETXEN_NIC_PEG_TUNE ; 
 scalar_t__ NETXEN_NIC_XGBE ; 
 int /*<<< orphan*/  NETXEN_PEG_HALT_STATUS1 ; 
 int /*<<< orphan*/  NETXEN_PEG_HALT_STATUS2 ; 
 int FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NX_CRB_DEV_STATE ; 
 int NX_DEV_READY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int _NETXEN_NIC_LINUX_MAJOR ; 
 int _NETXEN_NIC_LINUX_MINOR ; 
 int _NETXEN_NIC_LINUX_SUBVERSION ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct netxen_adapter*) ; 
 int FUNC8 (struct netxen_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct netxen_adapter*) ; 
 int FUNC11 (struct netxen_adapter*) ; 
 int FUNC12 (struct netxen_adapter*) ; 
 int FUNC13 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct netxen_adapter*) ; 
 int FUNC15 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct netxen_adapter*) ; 
 int FUNC20 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct netxen_adapter*) ; 

__attribute__((used)) static int
FUNC22(struct netxen_adapter *adapter)
{
	int val, err, first_boot;
	struct pci_dev *pdev = adapter->pdev;

	/* required for NX2031 dummy dma */
	err = FUNC20(adapter);
	if (err)
		return err;

	err = FUNC7(adapter);

	if (err < 0)
		return err;

	if (!err)
		goto wait_init;

	first_boot = FUNC1(adapter, FUNC0(0x1fc));

	err = FUNC8(adapter, first_boot);
	if (err) {
		FUNC5(&pdev->dev, "error in init HW init sequence\n");
		return err;
	}

	FUNC18(adapter);

	err = FUNC13(adapter);
	if (err < 0)
		goto err_out;
	if (err == 0)
		goto pcie_strap_init;

	if (first_boot != 0x55555555) {
		FUNC2(adapter, CRB_CMDPEG_STATE, 0);
		FUNC16(adapter);
		FUNC6(1);
	}

	FUNC2(adapter, CRB_DMA_SHIFT, 0x55555555);
	FUNC2(adapter, NETXEN_PEG_HALT_STATUS1, 0);
	FUNC2(adapter, NETXEN_PEG_HALT_STATUS2, 0);

	if (FUNC4(adapter->ahw.revision_id))
		FUNC19(adapter);

	err = FUNC12(adapter);
	if (err)
		goto err_out;

	FUNC17(adapter);

	if (FUNC3(adapter->ahw.revision_id)) {

		/* Initialize multicast addr pool owners */
		val = 0x7654;
		if (adapter->ahw.port_type == NETXEN_NIC_XGBE)
			val |= 0x0f000000;
		FUNC2(adapter, NETXEN_MAC_ADDR_CNTL_REG, val);

	}

	err = FUNC11(adapter);
	if (err)
		goto err_out;

	/*
	 * Tell the hardware our version number.
	 */
	val = (_NETXEN_NIC_LINUX_MAJOR << 16)
		| ((_NETXEN_NIC_LINUX_MINOR << 8))
		| (_NETXEN_NIC_LINUX_SUBVERSION);
	FUNC2(adapter, CRB_DRIVER_VERSION, val);

pcie_strap_init:
	if (FUNC4(adapter->ahw.revision_id))
		FUNC14(adapter);

wait_init:
	/* Handshake with the card before we register the devices. */
	err = FUNC15(adapter, NETXEN_NIC_PEG_TUNE);
	if (err) {
		FUNC10(adapter);
		goto err_out;
	}

	FUNC2(adapter, NX_CRB_DEV_STATE, NX_DEV_READY);

	FUNC21(adapter);

	FUNC9(adapter);

	adapter->need_fw_reset = 0;

	/* fall through and release firmware */

err_out:
	FUNC17(adapter);
	return err;
}