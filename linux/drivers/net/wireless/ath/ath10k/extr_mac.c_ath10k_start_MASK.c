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
typedef  int /*<<< orphan*/  u32 ;
struct wmi_bb_timing_cfg_arg {int /*<<< orphan*/  member_0; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  svc_map; TYPE_1__* pdev_param; } ;
struct ath10k {int state; int ani_enabled; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  radar_conf_state; scalar_t__ num_started_vdevs; TYPE_4__ wmi; int /*<<< orphan*/  dev_flags; TYPE_3__* running_fw; int /*<<< orphan*/  cfg_rx_chainmask; int /*<<< orphan*/  cfg_tx_chainmask; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  normal_mode_fw; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_7__ {TYPE_2__ fw_file; } ;
struct TYPE_5__ {int /*<<< orphan*/  enable_btcoex; int /*<<< orphan*/  peer_stats_update_period; int /*<<< orphan*/  ani_enable; int /*<<< orphan*/  arp_ac_override; int /*<<< orphan*/  idle_ps_config; int /*<<< orphan*/  burst_enable; int /*<<< orphan*/  dynamic_bw; int /*<<< orphan*/  pmf_qos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FIRMWARE_MODE_NORMAL ; 
 int /*<<< orphan*/  ATH10K_FLAG_BTCOEX ; 
 int /*<<< orphan*/  ATH10K_FW_FEATURE_BTCOEX_PARAM ; 
 int /*<<< orphan*/  ATH10K_FW_FEATURE_SUPPORTS_ADAPTIVE_CCA ; 
 int /*<<< orphan*/  ATH10K_RADAR_CONFIRMATION_IDLE ; 
#define  ATH10K_STATE_OFF 133 
#define  ATH10K_STATE_ON 132 
#define  ATH10K_STATE_RESTARTED 131 
#define  ATH10K_STATE_RESTARTING 130 
#define  ATH10K_STATE_UTF 129 
#define  ATH10K_STATE_WEDGED 128 
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int PEER_DEFAULT_STATS_UPDATE_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WMI_CCA_DETECT_LEVEL_AUTO ; 
 int /*<<< orphan*/  WMI_CCA_DETECT_MARGIN_AUTO ; 
 int /*<<< orphan*/  WMI_SERVICE_ADAPTIVE_OCS ; 
 int /*<<< orphan*/  WMI_SERVICE_BB_TIMING_CONFIG_SUPPORT ; 
 int /*<<< orphan*/  WMI_SERVICE_BURST ; 
 int /*<<< orphan*/  WMI_SERVICE_COEX_GPIO ; 
 int /*<<< orphan*/  WMI_SERVICE_SPOOF_MAC_SUPPORT ; 
 int FUNC1 (struct ath10k*,struct wmi_bb_timing_cfg_arg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int FUNC8 (struct ath10k*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath10k*,char*,int) ; 
 int FUNC14 (struct ath10k*,int) ; 
 int FUNC15 (struct ath10k*,struct wmi_bb_timing_cfg_arg*) ; 
 int FUNC16 (struct ath10k*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct ieee80211_hw *hw)
{
	struct ath10k *ar = hw->priv;
	u32 param;
	int ret = 0;
	struct wmi_bb_timing_cfg_arg bb_timing = {0};

	/*
	 * This makes sense only when restarting hw. It is harmless to call
	 * unconditionally. This is necessary to make sure no HTT/WMI tx
	 * commands will be submitted while restarting.
	 */
	FUNC5(ar);

	FUNC20(&ar->conf_mutex);

	switch (ar->state) {
	case ATH10K_STATE_OFF:
		ar->state = ATH10K_STATE_ON;
		break;
	case ATH10K_STATE_RESTARTING:
		ar->state = ATH10K_STATE_RESTARTED;
		break;
	case ATH10K_STATE_ON:
	case ATH10K_STATE_RESTARTED:
	case ATH10K_STATE_WEDGED:
		FUNC0(1);
		ret = -EINVAL;
		goto err;
	case ATH10K_STATE_UTF:
		ret = -EBUSY;
		goto err;
	}

	ret = FUNC8(ar, ATH10K_FIRMWARE_MODE_NORMAL);
	if (ret) {
		FUNC6(ar, "Could not init hif: %d\n", ret);
		goto err_off;
	}

	ret = FUNC3(ar, ATH10K_FIRMWARE_MODE_NORMAL,
				&ar->normal_mode_fw);
	if (ret) {
		FUNC6(ar, "Could not init core: %d\n", ret);
		goto err_power_down;
	}

	param = ar->wmi.pdev_param->pmf_qos;
	ret = FUNC17(ar, param, 1);
	if (ret) {
		FUNC13(ar, "failed to enable PMF QOS: %d\n", ret);
		goto err_core_stop;
	}

	param = ar->wmi.pdev_param->dynamic_bw;
	ret = FUNC17(ar, param, 1);
	if (ret) {
		FUNC13(ar, "failed to enable dynamic BW: %d\n", ret);
		goto err_core_stop;
	}

	if (FUNC22(WMI_SERVICE_SPOOF_MAC_SUPPORT, ar->wmi.svc_map)) {
		ret = FUNC18(ar, ar->mac_addr);
		if (ret) {
			FUNC6(ar, "failed to set prob req oui: %i\n", ret);
			goto err_core_stop;
		}
	}

	if (FUNC22(WMI_SERVICE_ADAPTIVE_OCS, ar->wmi.svc_map)) {
		ret = FUNC14(ar, true);
		if (ret) {
			FUNC13(ar, "failed to enable adaptive qcs: %d\n",
				    ret);
			goto err_core_stop;
		}
	}

	if (FUNC22(WMI_SERVICE_BURST, ar->wmi.svc_map)) {
		param = ar->wmi.pdev_param->burst_enable;
		ret = FUNC17(ar, param, 0);
		if (ret) {
			FUNC13(ar, "failed to disable burst: %d\n", ret);
			goto err_core_stop;
		}
	}

	param = ar->wmi.pdev_param->idle_ps_config;
	ret = FUNC17(ar, param, 1);
	if (ret && ret != -EOPNOTSUPP) {
		FUNC13(ar, "failed to enable idle_ps_config: %d\n", ret);
		goto err_core_stop;
	}

	FUNC2(ar, ar->cfg_tx_chainmask, ar->cfg_rx_chainmask);

	/*
	 * By default FW set ARP frames ac to voice (6). In that case ARP
	 * exchange is not working properly for UAPSD enabled AP. ARP requests
	 * which arrives with access category 0 are processed by network stack
	 * and send back with access category 0, but FW changes access category
	 * to 6. Set ARP frames access category to best effort (0) solves
	 * this problem.
	 */

	param = ar->wmi.pdev_param->arp_ac_override;
	ret = FUNC17(ar, param, 0);
	if (ret) {
		FUNC13(ar, "failed to set arp ac override parameter: %d\n",
			    ret);
		goto err_core_stop;
	}

	if (FUNC22(ATH10K_FW_FEATURE_SUPPORTS_ADAPTIVE_CCA,
		     ar->running_fw->fw_file.fw_features)) {
		ret = FUNC16(ar, 1,
							  WMI_CCA_DETECT_LEVEL_AUTO,
							  WMI_CCA_DETECT_MARGIN_AUTO);
		if (ret) {
			FUNC13(ar, "failed to enable adaptive cca: %d\n",
				    ret);
			goto err_core_stop;
		}
	}

	param = ar->wmi.pdev_param->ani_enable;
	ret = FUNC17(ar, param, 1);
	if (ret) {
		FUNC13(ar, "failed to enable ani by default: %d\n",
			    ret);
		goto err_core_stop;
	}

	ar->ani_enabled = true;

	if (FUNC9(ar)) {
		param = ar->wmi.pdev_param->peer_stats_update_period;
		ret = FUNC17(ar, param,
						PEER_DEFAULT_STATS_UPDATE_PERIOD);
		if (ret) {
			FUNC13(ar,
				    "failed to set peer stats period : %d\n",
				    ret);
			goto err_core_stop;
		}
	}

	param = ar->wmi.pdev_param->enable_btcoex;
	if (FUNC22(WMI_SERVICE_COEX_GPIO, ar->wmi.svc_map) &&
	    FUNC22(ATH10K_FW_FEATURE_BTCOEX_PARAM,
		     ar->running_fw->fw_file.fw_features)) {
		ret = FUNC17(ar, param, 0);
		if (ret) {
			FUNC13(ar,
				    "failed to set btcoex param: %d\n", ret);
			goto err_core_stop;
		}
		FUNC19(ATH10K_FLAG_BTCOEX, &ar->dev_flags);
	}

	if (FUNC22(WMI_SERVICE_BB_TIMING_CONFIG_SUPPORT, ar->wmi.svc_map)) {
		ret = FUNC1(ar, &bb_timing);
		if (!ret) {
			ret = FUNC15(ar, &bb_timing);
			if (ret) {
				FUNC13(ar,
					    "failed to set bb timings: %d\n",
					    ret);
				goto err_core_stop;
			}
		}
	}

	ar->num_started_vdevs = 0;
	FUNC10(ar);

	FUNC11(ar);
	FUNC12(ar);

	ar->radar_conf_state = ATH10K_RADAR_CONFIRMATION_IDLE;

	FUNC21(&ar->conf_mutex);
	return 0;

err_core_stop:
	FUNC4(ar);

err_power_down:
	FUNC7(ar);

err_off:
	ar->state = ATH10K_STATE_OFF;

err:
	FUNC21(&ar->conf_mutex);
	return ret;
}