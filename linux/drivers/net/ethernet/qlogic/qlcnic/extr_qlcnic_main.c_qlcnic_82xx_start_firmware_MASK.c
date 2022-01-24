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
struct qlcnic_adapter {TYPE_2__* pdev; scalar_t__ need_fw_reset; TYPE_1__* ahw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_DRIVER_VERSION ; 
 int /*<<< orphan*/  QLCNIC_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLCNIC_DEV_FAILED ; 
 int /*<<< orphan*/  QLCNIC_DEV_READY ; 
 int /*<<< orphan*/  QLCNIC_DRIVER_VERSION ; 
 int /*<<< orphan*/  QLCNIC_FLASH_ROMIMAGE ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*,int) ; 
 int FUNC9 (struct qlcnic_adapter*) ; 
 scalar_t__ qlcnic_load_fw_file ; 
 int FUNC10 (struct qlcnic_adapter*) ; 
 int FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct qlcnic_adapter*) ; 
 int FUNC14 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC15(struct qlcnic_adapter *adapter)
{
	int err;

	err = FUNC3(adapter);
	if (err < 0)
		return err;
	else if (!err)
		goto check_fw_status;

	if (qlcnic_load_fw_file)
		FUNC13(adapter);
	else {
		err = FUNC5(adapter);
		if (err)
			goto err_out;

		adapter->ahw->fw_type = QLCNIC_FLASH_ROMIMAGE;
	}

	err = FUNC10(adapter);
	if (err == 0)
		goto check_fw_status;

	err = FUNC11(adapter);
	if (err)
		goto err_out;

	err = FUNC9(adapter);
	if (err)
		goto err_out;

	FUNC12(adapter);
	FUNC0(adapter, CRB_DRIVER_VERSION, QLCNIC_DRIVER_VERSION);

check_fw_status:
	err = FUNC6(adapter);
	if (err)
		goto err_out;

	FUNC1(adapter, QLCNIC_CRB_DEV_STATE, QLCNIC_DEV_READY);
	FUNC8(adapter, 1);
	err = FUNC4(adapter);
	if (err) {
		FUNC2(&adapter->pdev->dev,
			"Memory allocation failed for eswitch\n");
		goto err_out;
	}
	err = FUNC14(adapter);
	if (err)
		goto err_out;

	FUNC7(adapter);
	adapter->need_fw_reset = 0;

	FUNC12(adapter);
	return 0;

err_out:
	FUNC1(adapter, QLCNIC_CRB_DEV_STATE, QLCNIC_DEV_FAILED);
	FUNC2(&adapter->pdev->dev, "Device state set to failed\n");

	FUNC12(adapter);
	return err;
}