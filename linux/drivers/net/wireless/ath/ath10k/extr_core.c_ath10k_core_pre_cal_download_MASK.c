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
struct ath10k {int /*<<< orphan*/  cal_mode; int /*<<< orphan*/  pre_cal_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  ATH10K_PRE_CAL_MODE_DT ; 
 int /*<<< orphan*/  ATH10K_PRE_CAL_MODE_FILE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ath10k*,char*) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	int ret;

	ret = FUNC3(ar, ar->pre_cal_file);
	if (ret == 0) {
		ar->cal_mode = ATH10K_PRE_CAL_MODE_FILE;
		goto success;
	}

	FUNC1(ar, ATH10K_DBG_BOOT,
		   "boot did not find a pre calibration file, try DT next: %d\n",
		   ret);

	ret = FUNC2(ar, "qcom,ath10k-pre-calibration-data");
	if (ret) {
		FUNC1(ar, ATH10K_DBG_BOOT,
			   "unable to load pre cal data from DT: %d\n", ret);
		return ret;
	}
	ar->cal_mode = ATH10K_PRE_CAL_MODE_DT;

success:
	FUNC1(ar, ATH10K_DBG_BOOT, "boot using calibration mode %s\n",
		   FUNC0(ar->cal_mode));

	return 0;
}