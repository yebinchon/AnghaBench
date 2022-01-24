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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_8__ {int ext_bid_supported; int bmi_ids_valid; scalar_t__ bmi_chip_id; scalar_t__ bmi_board_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  otp_len; int /*<<< orphan*/  otp_data; } ;
struct TYPE_7__ {TYPE_2__ fw_file; } ;
struct TYPE_5__ {int patch_load_addr; } ;
struct ath10k {scalar_t__ cal_mode; TYPE_4__ id; TYPE_3__ normal_mode_fw; TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_BMI_BOARD_ID_FROM_OTP ; 
 int ATH10K_BMI_BOARD_ID_STATUS_MASK ; 
 int /*<<< orphan*/  ATH10K_BMI_CHIP_ID_FROM_OTP ; 
 int ATH10K_BMI_EXT_BOARD_ID_SUPPORT ; 
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 scalar_t__ ATH10K_PRE_CAL_MODE_DT ; 
 scalar_t__ ATH10K_PRE_CAL_MODE_FILE ; 
 int BMI_PARAM_GET_EEPROM_BOARD_ID ; 
 int BMI_PARAM_GET_FLASH_BOARD_ID ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k*,int,int,int*) ; 
 int FUNC2 (struct ath10k*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	u32 result, address;
	u8 board_id, chip_id;
	bool ext_bid_support;
	int ret, bmi_board_id_param;

	address = ar->hw_params.patch_load_addr;

	if (!ar->normal_mode_fw.fw_file.otp_data ||
	    !ar->normal_mode_fw.fw_file.otp_len) {
		FUNC5(ar,
			    "failed to retrieve board id because of invalid otp\n");
		return -ENODATA;
	}

	FUNC3(ar, ATH10K_DBG_BOOT,
		   "boot upload otp to 0x%x len %zd for board id\n",
		   address, ar->normal_mode_fw.fw_file.otp_len);

	ret = FUNC2(ar, address,
				       ar->normal_mode_fw.fw_file.otp_data,
				       ar->normal_mode_fw.fw_file.otp_len);
	if (ret) {
		FUNC4(ar, "could not write otp for board id check: %d\n",
			   ret);
		return ret;
	}

	if (ar->cal_mode == ATH10K_PRE_CAL_MODE_DT ||
	    ar->cal_mode == ATH10K_PRE_CAL_MODE_FILE)
		bmi_board_id_param = BMI_PARAM_GET_FLASH_BOARD_ID;
	else
		bmi_board_id_param = BMI_PARAM_GET_EEPROM_BOARD_ID;

	ret = FUNC1(ar, address, bmi_board_id_param, &result);
	if (ret) {
		FUNC4(ar, "could not execute otp for board id check: %d\n",
			   ret);
		return ret;
	}

	board_id = FUNC0(result, ATH10K_BMI_BOARD_ID_FROM_OTP);
	chip_id = FUNC0(result, ATH10K_BMI_CHIP_ID_FROM_OTP);
	ext_bid_support = (result & ATH10K_BMI_EXT_BOARD_ID_SUPPORT);

	FUNC3(ar, ATH10K_DBG_BOOT,
		   "boot get otp board id result 0x%08x board_id %d chip_id %d ext_bid_support %d\n",
		   result, board_id, chip_id, ext_bid_support);

	ar->id.ext_bid_supported = ext_bid_support;

	if ((result & ATH10K_BMI_BOARD_ID_STATUS_MASK) != 0 ||
	    (board_id == 0)) {
		FUNC3(ar, ATH10K_DBG_BOOT,
			   "board id does not exist in otp, ignore it\n");
		return -EOPNOTSUPP;
	}

	ar->id.bmi_ids_valid = true;
	ar->id.bmi_board_id = board_id;
	ar->id.bmi_chip_id = chip_id;

	return 0;
}