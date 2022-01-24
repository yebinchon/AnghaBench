#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath10k {int /*<<< orphan*/  cal_mode; int /*<<< orphan*/  cal_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_CAL_MODE_DT ; 
 int /*<<< orphan*/  ATH10K_CAL_MODE_EEPROM ; 
 int /*<<< orphan*/  ATH10K_CAL_MODE_FILE ; 
 int /*<<< orphan*/  ATH10K_CAL_MODE_OTP ; 
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct ath10k*) ; 
 int FUNC4 (struct ath10k*,char*) ; 
 int FUNC5 (struct ath10k*) ; 
 int FUNC6 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,char*,int) ; 

__attribute__((used)) static int FUNC8(struct ath10k *ar)
{
	int ret;

	ret = FUNC1(ar);
	if (ret == 0)
		return 0;

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "pre cal download procedure failed, try cal file: %d\n",
		   ret);

	ret = FUNC6(ar, ar->cal_file);
	if (ret == 0) {
		ar->cal_mode = ATH10K_CAL_MODE_FILE;
		goto done;
	}

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "boot did not find a calibration file, try DT next: %d\n",
		   ret);

	ret = FUNC4(ar, "qcom,ath10k-calibration-data");
	if (ret == 0) {
		ar->cal_mode = ATH10K_CAL_MODE_DT;
		goto done;
	}

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "boot did not find DT entry, try target EEPROM next: %d\n",
		   ret);

	ret = FUNC5(ar);
	if (ret == 0) {
		ar->cal_mode = ATH10K_CAL_MODE_EEPROM;
		goto done;
	}

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "boot did not find target EEPROM entry, try OTP next: %d\n",
		   ret);

	ret = FUNC3(ar);
	if (ret) {
		FUNC7(ar, "failed to run otp: %d\n", ret);
		return ret;
	}

	ar->cal_mode = ATH10K_CAL_MODE_OTP;

done:
	FUNC2(ar, ATH10K_DBG_BOOT, "boot using calibration mode %s\n",
		   FUNC0(ar->cal_mode));
	return 0;
}