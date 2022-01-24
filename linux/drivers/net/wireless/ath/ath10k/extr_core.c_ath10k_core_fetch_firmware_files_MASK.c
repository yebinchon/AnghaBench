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
struct TYPE_5__ {int /*<<< orphan*/  dir; } ;
struct TYPE_6__ {TYPE_2__ fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_file; } ;
struct ath10k {int fw_api; TYPE_3__ hw_params; TYPE_1__ normal_mode_fw; } ;
typedef  int /*<<< orphan*/  fw_name ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int ATH10K_FW_API_MAX ; 
 int ATH10K_FW_API_MIN ; 
 int FUNC0 (struct ath10k*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	int ret, i;
	char fw_name[100];

	/* calibration file is optional, don't check for any errors */
	FUNC4(ar);

	for (i = ATH10K_FW_API_MAX; i >= ATH10K_FW_API_MIN; i--) {
		ar->fw_api = i;
		FUNC2(ar, ATH10K_DBG_BOOT, "trying fw api %d\n",
			   ar->fw_api);

		FUNC1(ar, fw_name, sizeof(fw_name), ar->fw_api);
		ret = FUNC0(ar, fw_name,
						       &ar->normal_mode_fw.fw_file);
		if (!ret)
			goto success;
	}

	/* we end up here if we couldn't fetch any firmware */

	FUNC3(ar, "Failed to find firmware-N.bin (N between %d and %d) from %s: %d",
		   ATH10K_FW_API_MIN, ATH10K_FW_API_MAX, ar->hw_params.fw.dir,
		   ret);

	return ret;

success:
	FUNC2(ar, ATH10K_DBG_BOOT, "using fw api %d\n", ar->fw_api);

	return 0;
}