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
struct qlcnic_hardware_context {int msix_supported; int run_post; int /*<<< orphan*/ * mailbox; int /*<<< orphan*/  post_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  work; } ;
struct qlcnic_adapter {int rx_mac_learn; TYPE_3__ fw_work; TYPE_2__* nic_ops; int /*<<< orphan*/  dcb; int /*<<< orphan*/  idc_aen_work; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_5__ {int (* init_driver ) (struct qlcnic_adapter*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOTRECOVERABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_POST_FAST_MODE ; 
 int /*<<< orphan*/  QLC_83XX_POST_MEDIUM_MODE ; 
 int /*<<< orphan*/  QLC_83XX_POST_SLOW_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int FUNC8 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_83xx_idc_aen_work ; 
 int FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC14 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC15 (struct qlcnic_adapter*) ; 
 int FUNC16 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int qlcnic_load_fw_file ; 
 int FUNC19 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC20 (struct qlcnic_adapter*) ; 
 int FUNC21 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_use_msi_x ; 
 int FUNC23 (struct qlcnic_adapter*) ; 

int FUNC24(struct qlcnic_adapter *adapter, int pci_using_dac)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int err = 0;

	adapter->rx_mac_learn = false;
	ahw->msix_supported = !!qlcnic_use_msi_x;

	/* Check if POST needs to be run */
	switch (qlcnic_load_fw_file) {
	case 2:
		ahw->post_mode = QLC_83XX_POST_FAST_MODE;
		ahw->run_post = true;
		break;
	case 3:
		ahw->post_mode = QLC_83XX_POST_MEDIUM_MODE;
		ahw->run_post = true;
		break;
	case 4:
		ahw->post_mode = QLC_83XX_POST_SLOW_MODE;
		ahw->run_post = true;
		break;
	default:
		ahw->run_post = false;
		break;
	}

	FUNC12(adapter);

	err = FUNC11(adapter);
	if (err)
		goto exit;

	if (FUNC20(adapter)) {
		err = FUNC21(adapter, pci_using_dac);
		if (err)
			goto detach_mbx;
		else
			return err;
	}

	if (FUNC14(adapter) ||
	    FUNC15(adapter)) {
		FUNC1(&adapter->pdev->dev, "Failed reading flash mfg id\n");
		err = -ENOTRECOVERABLE;
		goto detach_mbx;
	}

	err = FUNC2(adapter);
	if (err)
		goto detach_mbx;

	err = FUNC8(adapter);
	if (err)
		goto detach_mbx;

	err = FUNC9(adapter);
	if (err)
		goto detach_mbx;

	err = FUNC19(adapter);
	if (err) {
		FUNC1(&adapter->pdev->dev, "Failed to setup interrupt\n");
		goto disable_intr;
	}

	FUNC0(&adapter->idc_aen_work, qlcnic_83xx_idc_aen_work);

	err = FUNC16(adapter);
	if (err)
		goto disable_mbx_intr;

	FUNC3(adapter);
	FUNC17(adapter->dcb);
	FUNC13(adapter, 1);
	FUNC18(adapter->dcb);

	/* Configure default, SR-IOV or Virtual NIC mode of operation */
	err = FUNC4(adapter);
	if (err)
		goto disable_mbx_intr;


	/* Perform operating mode specific initialization */
	err = adapter->nic_ops->init_driver(adapter);
	if (err)
		goto disable_mbx_intr;

	/* Periodically monitor device status */
	FUNC10(&adapter->fw_work.work);
	return 0;

disable_mbx_intr:
	FUNC7(adapter);

disable_intr:
	FUNC22(adapter);

detach_mbx:
	FUNC5(adapter);
	FUNC6(ahw->mailbox);
	ahw->mailbox = NULL;
exit:
	return err;
}