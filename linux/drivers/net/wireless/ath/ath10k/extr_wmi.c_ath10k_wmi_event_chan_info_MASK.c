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
struct wmi_ch_info_ev_arg {int /*<<< orphan*/  mac_clk_mhz; int /*<<< orphan*/  cycle_count; int /*<<< orphan*/  rx_clear_count; int /*<<< orphan*/  noise_floor; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  freq; int /*<<< orphan*/  err_code; } ;
struct sk_buff {int dummy; } ;
struct chan_info_params {void* cycle_count; void* rx_clear_count; void* noise_floor; void* cmd_flags; void* freq; void* err_code; void* mac_clk_mhz; } ;
struct TYPE_4__ {int state; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_3__* running_fw; TYPE_1__ scan; } ;
struct TYPE_5__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_6__ {TYPE_2__ fw_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL ; 
#define  ATH10K_SCAN_ABORTING 131 
#define  ATH10K_SCAN_IDLE 130 
#define  ATH10K_SCAN_RUNNING 129 
#define  ATH10K_SCAN_STARTING 128 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,void*,void*,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct chan_info_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct chan_info_params*) ; 
 int FUNC5 (struct ath10k*,struct sk_buff*,struct wmi_ch_info_ev_arg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct ath10k *ar, struct sk_buff *skb)
{
	struct chan_info_params ch_info_param;
	struct wmi_ch_info_ev_arg arg = {};
	int ret;

	ret = FUNC5(ar, skb, &arg);
	if (ret) {
		FUNC2(ar, "failed to parse chan info event: %d\n", ret);
		return;
	}

	ch_info_param.err_code = FUNC0(arg.err_code);
	ch_info_param.freq = FUNC0(arg.freq);
	ch_info_param.cmd_flags = FUNC0(arg.cmd_flags);
	ch_info_param.noise_floor = FUNC0(arg.noise_floor);
	ch_info_param.rx_clear_count = FUNC0(arg.rx_clear_count);
	ch_info_param.cycle_count = FUNC0(arg.cycle_count);
	ch_info_param.mac_clk_mhz = FUNC0(arg.mac_clk_mhz);

	FUNC1(ar, ATH10K_DBG_WMI,
		   "chan info err_code %d freq %d cmd_flags %d noise_floor %d rx_clear_count %d cycle_count %d\n",
		   ch_info_param.err_code, ch_info_param.freq, ch_info_param.cmd_flags,
		   ch_info_param.noise_floor, ch_info_param.rx_clear_count,
		   ch_info_param.cycle_count);

	FUNC6(&ar->data_lock);

	switch (ar->scan.state) {
	case ATH10K_SCAN_IDLE:
	case ATH10K_SCAN_STARTING:
		FUNC2(ar, "received chan info event without a scan request, ignoring\n");
		goto exit;
	case ATH10K_SCAN_RUNNING:
	case ATH10K_SCAN_ABORTING:
		break;
	}

	if (FUNC8(ATH10K_FW_FEATURE_SINGLE_CHAN_INFO_PER_CHANNEL,
		     ar->running_fw->fw_file.fw_features))
		FUNC4(ar, &ch_info_param);
	else
		FUNC3(ar, &ch_info_param);

exit:
	FUNC7(&ar->data_lock);
}