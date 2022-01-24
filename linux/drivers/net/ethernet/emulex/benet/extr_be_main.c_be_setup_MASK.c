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
struct device {int dummy; } ;
struct TYPE_4__ {int fc_autoneg; } ;
struct be_adapter {int /*<<< orphan*/  flags; TYPE_2__ phy; scalar_t__ num_vfs; int /*<<< orphan*/  if_handle; int /*<<< orphan*/  rx_fc; int /*<<< orphan*/  tx_fc; TYPE_1__* pdev; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  cmd_privileges; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  BE_FLAGS_SETUP_DONE ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  IFLA_VF_LINK_STATE_AUTO ; 
 int /*<<< orphan*/  PORT_FWD_TYPE_PASSTHRU ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct be_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct be_adapter*) ; 
 int FUNC9 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct be_adapter*) ; 
 int FUNC12 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct be_adapter*) ; 
 int FUNC16 (struct be_adapter*) ; 
 int FUNC17 (struct be_adapter*) ; 
 int FUNC18 (struct be_adapter*) ; 
 int FUNC19 (struct be_adapter*) ; 
 int FUNC20 (struct be_adapter*) ; 
 scalar_t__ FUNC21 (struct be_adapter*) ; 
 scalar_t__ FUNC22 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC23 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC24 (struct be_adapter*) ; 
 int FUNC25 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC26 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC28 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 

__attribute__((used)) static int FUNC33(struct be_adapter *adapter)
{
	struct device *dev = &adapter->pdev->dev;
	int status;

	status = FUNC15(adapter);
	if (status)
		return status;

	FUNC24(adapter);

	if (!FUNC30(adapter))
		FUNC10(adapter);

	/* invoke this cmd first to get pf_num and vf_num which are needed
	 * for issuing profile related cmds
	 */
	if (!FUNC2(adapter)) {
		status = FUNC7(adapter, NULL);
		if (status)
			return status;
	}

	status = FUNC16(adapter);
	if (status)
		goto err;

	if (!FUNC0(adapter) && FUNC22(adapter))
		FUNC3(adapter);

	status = FUNC17(adapter);
	if (status)
		goto err;

	status = FUNC20(adapter);
	if (status)
		goto err;

	/* will enable all the needed filter flags in be_open() */
	status = FUNC18(adapter);
	if (status)
		goto err;

	/* Updating real_num_tx/rx_queues() requires rtnl_lock() */
	FUNC31();
	status = FUNC25(adapter);
	FUNC32();
	if (status)
		goto err;

	FUNC6(adapter, &adapter->cmd_privileges, 0);

	status = FUNC19(adapter);
	if (status)
		goto err;

	FUNC8(adapter);
	FUNC28(dev, "FW version is %s\n", adapter->fw_ver);

	if (FUNC0(adapter) && FUNC29(adapter->fw_ver) < 4) {
		FUNC27(dev, "Firmware on card is old(%s), IRQs may not work",
			adapter->fw_ver);
		FUNC27(dev, "Please upgrade firmware to version >= 4.0\n");
	}

	status = FUNC12(adapter, adapter->tx_fc,
					 adapter->rx_fc);
	if (status)
		FUNC5(adapter, &adapter->tx_fc,
					&adapter->rx_fc);

	FUNC28(&adapter->pdev->dev, "HW Flow control - TX:%d RX:%d\n",
		 adapter->tx_fc, adapter->rx_fc);

	if (FUNC22(adapter))
		FUNC14(adapter,
					       IFLA_VF_LINK_STATE_AUTO, 0);

	/* BE3 EVB echoes broadcast/multicast packets back to PF's vport
	 * confusing a linux bridge or OVS that it might be connected to.
	 * Set the EVB to PASSTHRU mode which effectively disables the EVB
	 * when SRIOV is not enabled.
	 */
	if (FUNC1(adapter))
		FUNC13(adapter, 0, 0, adapter->if_handle,
				      PORT_FWD_TYPE_PASSTHRU, 0);

	if (adapter->num_vfs)
		FUNC26(adapter);

	status = FUNC9(adapter);
	if (!status && FUNC21(adapter))
		adapter->phy.fc_autoneg = 1;

	if (FUNC22(adapter) && !FUNC30(adapter))
		FUNC11(adapter);

	FUNC23(adapter);
	adapter->flags |= BE_FLAGS_SETUP_DONE;
	return 0;
err:
	FUNC4(adapter);
	return status;
}