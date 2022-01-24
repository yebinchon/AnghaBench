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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {scalar_t__ fw_diag_ce_download; int /*<<< orphan*/  patch_load_addr; } ;
struct ath10k {TYPE_2__ hw_params; TYPE_1__* running_fw; } ;
struct TYPE_6__ {void* firmware_data; int /*<<< orphan*/  firmware_len; } ;
struct TYPE_4__ {TYPE_3__ fw_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath10k*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	u32 address, data_len;
	const void *data;
	int ret;

	address = ar->hw_params.patch_load_addr;

	data = ar->running_fw->fw_file.firmware_data;
	data_len = ar->running_fw->fw_file.firmware_len;

	ret = FUNC4(ar, &ar->running_fw->fw_file);
	if (ret) {
		FUNC2(ar, "failed to configure fw code swap: %d\n",
			   ret);
		return ret;
	}

	FUNC1(ar, ATH10K_DBG_BOOT,
		   "boot uploading firmware image %pK len %d\n",
		   data, data_len);

	/* Check if device supports to download firmware via
	 * diag copy engine. Downloading firmware via diag CE
	 * greatly reduces the time to download firmware.
	 */
	if (ar->hw_params.fw_diag_ce_download) {
		ret = FUNC3(ar, address,
						   data, data_len);
		if (ret == 0)
			/* firmware upload via diag ce was successful */
			return 0;

		FUNC5(ar,
			    "failed to upload firmware via diag ce, trying BMI: %d",
			    ret);
	}

	return FUNC0(ar, address,
					data, data_len);
}