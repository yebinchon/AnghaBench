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
typedef  int u32 ;
struct ath10k {int dev_id; } ;

/* Variables and functions */
 int HI_OPTION_FW_BRIDGE_SHIFT ; 
 int HI_OPTION_FW_MODE_AP ; 
 int HI_OPTION_FW_MODE_SHIFT ; 
 int HI_OPTION_FW_SUBMODE_SHIFT ; 
 int HI_OPTION_MAC_ADDR_METHOD_SHIFT ; 
 int HI_OPTION_NUM_DEV_SHIFT ; 
 int HTC_PROTOCOL_VERSION ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  hi_app_host_interest ; 
 int /*<<< orphan*/  hi_be ; 
 int /*<<< orphan*/  hi_fw_swap ; 
 int /*<<< orphan*/  hi_hci_uart_pwr_mgmt_params_ext ; 
 int /*<<< orphan*/  hi_option_flag ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	u32 param_host;
	int ret;

	/* tell target which HTC version it is used*/
	ret = FUNC1(ar, hi_app_host_interest,
				 HTC_PROTOCOL_VERSION);
	if (ret) {
		FUNC2(ar, "settings HTC version failed\n");
		return ret;
	}

	/* set the firmware mode to STA/IBSS/AP */
	ret = FUNC0(ar, hi_option_flag, &param_host);
	if (ret) {
		FUNC2(ar, "setting firmware mode (1/2) failed\n");
		return ret;
	}

	/* TODO following parameters need to be re-visited. */
	/* num_device */
	param_host |= (1 << HI_OPTION_NUM_DEV_SHIFT);
	/* Firmware mode */
	/* FIXME: Why FW_MODE_AP ??.*/
	param_host |= (HI_OPTION_FW_MODE_AP << HI_OPTION_FW_MODE_SHIFT);
	/* mac_addr_method */
	param_host |= (1 << HI_OPTION_MAC_ADDR_METHOD_SHIFT);
	/* firmware_bridge */
	param_host |= (0 << HI_OPTION_FW_BRIDGE_SHIFT);
	/* fwsubmode */
	param_host |= (0 << HI_OPTION_FW_SUBMODE_SHIFT);

	ret = FUNC1(ar, hi_option_flag, param_host);
	if (ret) {
		FUNC2(ar, "setting firmware mode (2/2) failed\n");
		return ret;
	}

	/* We do all byte-swapping on the host */
	ret = FUNC1(ar, hi_be, 0);
	if (ret) {
		FUNC2(ar, "setting host CPU BE mode failed\n");
		return ret;
	}

	/* FW descriptor/Data swap flags */
	ret = FUNC1(ar, hi_fw_swap, 0);

	if (ret) {
		FUNC2(ar, "setting FW data/desc swap flags failed\n");
		return ret;
	}

	/* Some devices have a special sanity check that verifies the PCI
	 * Device ID is written to this host interest var. It is known to be
	 * required to boot QCA6164.
	 */
	ret = FUNC1(ar, hi_hci_uart_pwr_mgmt_params_ext,
				 ar->dev_id);
	if (ret) {
		FUNC2(ar, "failed to set pwr_mgmt_params: %d\n", ret);
		return ret;
	}

	return 0;
}