#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct TYPE_6__ {char* fw_version; int /*<<< orphan*/ * firmware; scalar_t__ codeswap_len; scalar_t__ codeswap_data; int /*<<< orphan*/  wmi_op_version; } ;
struct TYPE_7__ {TYPE_2__ fw_file; } ;
struct TYPE_5__ {int utf_monitor; TYPE_4__ utf_mode_fw; } ;
struct ath10k {scalar_t__ state; int /*<<< orphan*/  conf_mutex; TYPE_1__ testmode; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_TESTMODE ; 
 int /*<<< orphan*/  ATH10K_FIRMWARE_MODE_UTF ; 
 scalar_t__ ATH10K_STATE_OFF ; 
 scalar_t__ ATH10K_STATE_UTF ; 
 int EALREADY ; 
 int EBUSY ; 
 int EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,char const*) ; 
 int FUNC7 (struct ath10k*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,TYPE_2__*) ; 
 int FUNC9 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*) ; 

__attribute__((used)) static int FUNC17(struct ath10k *ar, struct nlattr *tb[])
{
	const char *ver;
	int ret;

	FUNC2(ar, ATH10K_DBG_TESTMODE, "testmode cmd utf start\n");

	FUNC11(&ar->conf_mutex);

	if (ar->state == ATH10K_STATE_UTF) {
		ret = -EALREADY;
		goto err;
	}

	/* start utf only when the driver is not in use  */
	if (ar->state != ATH10K_STATE_OFF) {
		ret = -EBUSY;
		goto err;
	}

	if (FUNC0(ar->testmode.utf_mode_fw.fw_file.firmware != NULL)) {
		/* utf image is already downloaded, it shouldn't be */
		ret = -EEXIST;
		goto err;
	}

	ret = FUNC9(ar);
	if (ret) {
		FUNC3(ar, "failed to fetch UTF firmware: %d", ret);
		goto err;
	}

	if (ar->testmode.utf_mode_fw.fw_file.codeswap_data &&
	    ar->testmode.utf_mode_fw.fw_file.codeswap_len) {
		ret = FUNC7(ar,
						&ar->testmode.utf_mode_fw.fw_file);
		if (ret) {
			FUNC10(ar,
				    "failed to init utf code swap segment: %d\n",
				    ret);
			goto err_release_utf_mode_fw;
		}
	}

	FUNC14(&ar->data_lock);
	ar->testmode.utf_monitor = true;
	FUNC15(&ar->data_lock);

	FUNC2(ar, ATH10K_DBG_TESTMODE, "testmode wmi version %d\n",
		   ar->testmode.utf_mode_fw.fw_file.wmi_op_version);

	ret = FUNC5(ar, ATH10K_FIRMWARE_MODE_UTF);
	if (ret) {
		FUNC3(ar, "failed to power up hif (testmode): %d\n", ret);
		ar->state = ATH10K_STATE_OFF;
		goto err_release_utf_mode_fw;
	}

	ret = FUNC1(ar, ATH10K_FIRMWARE_MODE_UTF,
				&ar->testmode.utf_mode_fw);
	if (ret) {
		FUNC3(ar, "failed to start core (testmode): %d\n", ret);
		ar->state = ATH10K_STATE_OFF;
		goto err_power_down;
	}

	ar->state = ATH10K_STATE_UTF;

	if (FUNC16(ar->testmode.utf_mode_fw.fw_file.fw_version) > 0)
		ver = ar->testmode.utf_mode_fw.fw_file.fw_version;
	else
		ver = "API 1";

	FUNC6(ar, "UTF firmware %s started\n", ver);

	FUNC12(&ar->conf_mutex);

	return 0;

err_power_down:
	FUNC4(ar);

err_release_utf_mode_fw:
	if (ar->testmode.utf_mode_fw.fw_file.codeswap_data &&
	    ar->testmode.utf_mode_fw.fw_file.codeswap_len)
		FUNC8(ar,
					     &ar->testmode.utf_mode_fw.fw_file);

	FUNC13(ar->testmode.utf_mode_fw.fw_file.firmware);
	ar->testmode.utf_mode_fw.fw_file.firmware = NULL;

err:
	FUNC12(&ar->conf_mutex);

	return ret;
}