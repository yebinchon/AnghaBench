#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_8__ {int bmi_eboard_id; } ;
struct TYPE_6__ {int otp_len; int /*<<< orphan*/  otp_data; } ;
struct TYPE_7__ {TYPE_2__ fw_file; } ;
struct TYPE_5__ {int patch_load_addr; } ;
struct ath10k {TYPE_4__ id; TYPE_3__ normal_mode_fw; TYPE_1__ hw_params; } ;

/* Variables and functions */
 int ATH10K_BMI_EBOARD_ID_STATUS_MASK ; 
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  BMI_PARAM_GET_EXT_BOARD_ID ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct ath10k*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct ath10k*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	u32 result, address;
	u8 ext_board_id;
	int ret;

	address = ar->hw_params.patch_load_addr;

	if (!ar->normal_mode_fw.fw_file.otp_data ||
	    !ar->normal_mode_fw.fw_file.otp_len) {
		FUNC4(ar,
			    "failed to retrieve extended board id due to otp binary missing\n");
		return -ENODATA;
	}

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "boot upload otp to 0x%x len %zd for ext board id\n",
		   address, ar->normal_mode_fw.fw_file.otp_len);

	ret = FUNC1(ar, address,
				       ar->normal_mode_fw.fw_file.otp_data,
				       ar->normal_mode_fw.fw_file.otp_len);
	if (ret) {
		FUNC3(ar, "could not write otp for ext board id check: %d\n",
			   ret);
		return ret;
	}

	ret = FUNC0(ar, address, BMI_PARAM_GET_EXT_BOARD_ID, &result);
	if (ret) {
		FUNC3(ar, "could not execute otp for ext board id check: %d\n",
			   ret);
		return ret;
	}

	if (!result) {
		FUNC2(ar, ATH10K_DBG_BOOT,
			   "ext board id does not exist in otp, ignore it\n");
		return -EOPNOTSUPP;
	}

	ext_board_id = result & ATH10K_BMI_EBOARD_ID_STATUS_MASK;

	FUNC2(ar, ATH10K_DBG_BOOT,
		   "boot get otp ext board id result 0x%08x ext_board_id %d\n",
		   result, ext_board_id);

	ar->id.bmi_eboard_id = ext_board_id;

	return 0;
}