#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  target_info ;
struct bmi_target_info {int /*<<< orphan*/  version; } ;
struct TYPE_9__ {int /*<<< orphan*/  fw_features; int /*<<< orphan*/  fw_version; } ;
struct TYPE_10__ {TYPE_4__ fw_file; } ;
struct TYPE_6__ {int bus; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; TYPE_5__ normal_mode_fw; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  dev; TYPE_3__* hw; TYPE_1__ hif; int /*<<< orphan*/  target_version; } ;
struct TYPE_8__ {TYPE_2__* wiphy; } ;
struct TYPE_7__ {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  hw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_BD_IE_BOARD ; 
#define  ATH10K_BUS_AHB 132 
#define  ATH10K_BUS_PCI 131 
#define  ATH10K_BUS_SDIO 130 
#define  ATH10K_BUS_SNOC 129 
#define  ATH10K_BUS_USB 128 
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  ATH10K_FIRMWARE_MODE_NORMAL ; 
 int /*<<< orphan*/  ATH10K_FW_FEATURE_NON_BMI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EOPNOTSUPP ; 
 int FUNC1 (struct ath10k*,struct bmi_target_info*) ; 
 int FUNC2 (struct ath10k*,struct bmi_target_info*) ; 
 int FUNC3 (struct ath10k*) ; 
 int FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int FUNC8 (struct ath10k*) ; 
 int FUNC9 (struct ath10k*) ; 
 int FUNC10 (struct ath10k*) ; 
 int FUNC11 (struct ath10k*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath10k*,char*,int) ; 
 int FUNC18 (struct ath10k*,struct bmi_target_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath10k*) ; 
 int FUNC20 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct ath10k*) ; 
 int FUNC22 (struct ath10k*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct bmi_target_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct ath10k *ar)
{
	struct bmi_target_info target_info;
	int ret = 0;

	ret = FUNC20(ar, ATH10K_FIRMWARE_MODE_NORMAL);
	if (ret) {
		FUNC17(ar, "could not power on hif bus (%d)\n", ret);
		return ret;
	}

	switch (ar->hif.bus) {
	case ATH10K_BUS_SDIO:
		FUNC25(&target_info, 0, sizeof(target_info));
		ret = FUNC2(ar, &target_info);
		if (ret) {
			FUNC17(ar, "could not get target info (%d)\n", ret);
			goto err_power_down;
		}
		ar->target_version = target_info.version;
		ar->hw->wiphy->hw_version = target_info.version;
		break;
	case ATH10K_BUS_PCI:
	case ATH10K_BUS_AHB:
	case ATH10K_BUS_USB:
		FUNC25(&target_info, 0, sizeof(target_info));
		ret = FUNC1(ar, &target_info);
		if (ret) {
			FUNC17(ar, "could not get target info (%d)\n", ret);
			goto err_power_down;
		}
		ar->target_version = target_info.version;
		ar->hw->wiphy->hw_version = target_info.version;
		break;
	case ATH10K_BUS_SNOC:
		FUNC25(&target_info, 0, sizeof(target_info));
		ret = FUNC18(ar, &target_info);
		if (ret) {
			FUNC17(ar, "could not get target info (%d)\n", ret);
			goto err_power_down;
		}
		ar->target_version = target_info.version;
		ar->hw->wiphy->hw_version = target_info.version;
		break;
	default:
		FUNC17(ar, "incorrect hif bus type: %d\n", ar->hif.bus);
	}

	ret = FUNC21(ar);
	if (ret) {
		FUNC17(ar, "could not get hw params (%d)\n", ret);
		goto err_power_down;
	}

	ret = FUNC6(ar);
	if (ret) {
		FUNC17(ar, "could not fetch firmware files (%d)\n", ret);
		goto err_power_down;
	}

	FUNC0(sizeof(ar->hw->wiphy->fw_version) !=
		     sizeof(ar->normal_mode_fw.fw_file.fw_version));
	FUNC24(ar->hw->wiphy->fw_version, ar->normal_mode_fw.fw_file.fw_version,
	       sizeof(ar->hw->wiphy->fw_version));

	FUNC16(ar);

	if (!FUNC28(ATH10K_FW_FEATURE_NON_BMI,
		      ar->normal_mode_fw.fw_file.fw_features)) {
		ret = FUNC10(ar);
		if (ret) {
			/* pre calibration data download is not necessary
			 * for all the chipsets. Ignore failures and continue.
			 */
			FUNC13(ar, ATH10K_DBG_BOOT,
				   "could not load pre cal data: %d\n", ret);
		}

		ret = FUNC8(ar);
		if (ret && ret != -EOPNOTSUPP) {
			FUNC17(ar, "failed to get board id from otp: %d\n",
				   ret);
			goto err_free_firmware_files;
		}

		ret = FUNC4(ar);
		if (ret)
			FUNC13(ar, ATH10K_DBG_BOOT, "SMBIOS bdf variant name not set.\n");

		ret = FUNC3(ar);
		if (ret)
			FUNC13(ar, ATH10K_DBG_BOOT, "DT bdf variant name not set.\n");

		ret = FUNC5(ar, ATH10K_BD_IE_BOARD);
		if (ret) {
			FUNC17(ar, "failed to fetch board file: %d\n", ret);
			goto err_free_firmware_files;
		}

		FUNC14(ar);
	}

	FUNC23(ar->dev, ar->mac_addr, sizeof(ar->mac_addr));

	ret = FUNC9(ar);
	if (ret) {
		FUNC17(ar, "fatal problem with firmware features: %d\n",
			   ret);
		goto err_free_firmware_files;
	}

	if (!FUNC28(ATH10K_FW_FEATURE_NON_BMI,
		      ar->normal_mode_fw.fw_file.fw_features)) {
		ret = FUNC22(ar,
						&ar->normal_mode_fw.fw_file);
		if (ret) {
			FUNC17(ar, "failed to initialize code swap segment: %d\n",
				   ret);
			goto err_free_firmware_files;
		}
	}

	FUNC26(&ar->conf_mutex);

	ret = FUNC11(ar, ATH10K_FIRMWARE_MODE_NORMAL,
				&ar->normal_mode_fw);
	if (ret) {
		FUNC17(ar, "could not init core (%d)\n", ret);
		goto err_unlock;
	}

	FUNC15(ar);
	FUNC12(ar);

	FUNC27(&ar->conf_mutex);

	FUNC19(ar);
	return 0;

err_unlock:
	FUNC27(&ar->conf_mutex);

err_free_firmware_files:
	FUNC7(ar);

err_power_down:
	FUNC19(ar);

	return ret;
}