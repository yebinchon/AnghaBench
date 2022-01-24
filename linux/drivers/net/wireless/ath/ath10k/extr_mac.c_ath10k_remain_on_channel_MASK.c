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
typedef  void* u32 ;
struct wmi_start_scan_arg {int n_channels; int burst_duration_ms; int /*<<< orphan*/  scan_ctrl_flags; void* max_scan_time; void* dwell_time_passive; void* dwell_time_active; int /*<<< orphan*/ * channels; int /*<<< orphan*/  scan_id; int /*<<< orphan*/  vdev_id; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct ath10k_vif {int /*<<< orphan*/  vdev_id; } ;
struct TYPE_5__ {int state; int is_roc; int roc_notify; int /*<<< orphan*/  timeout; int /*<<< orphan*/  on_channel; int /*<<< orphan*/  roc_freq; int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  completed; int /*<<< orphan*/  started; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; TYPE_2__ scan; TYPE_3__* hw; int /*<<< orphan*/  data_lock; } ;
typedef  enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_6__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int max_remain_on_channel_duration; } ;

/* Variables and functions */
#define  ATH10K_SCAN_ABORTING 131 
 int /*<<< orphan*/  ATH10K_SCAN_ID ; 
#define  ATH10K_SCAN_IDLE 130 
#define  ATH10K_SCAN_RUNNING 129 
#define  ATH10K_SCAN_STARTING 128 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  WMI_SCAN_FILTER_PROBE_REQ ; 
 int /*<<< orphan*/  WMI_SCAN_FLAG_PASSIVE ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*,struct wmi_start_scan_arg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct wmi_start_scan_arg*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wmi_start_scan_arg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_channel *chan,
				    int duration,
				    enum ieee80211_roc_type type)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	struct wmi_start_scan_arg arg;
	int ret = 0;
	u32 scan_time_msec;

	FUNC8(&ar->conf_mutex);

	if (FUNC0(hw, vif) > 0) {
		ret = -EBUSY;
		goto exit;
	}

	FUNC11(&ar->data_lock);
	switch (ar->scan.state) {
	case ATH10K_SCAN_IDLE:
		FUNC10(&ar->scan.started);
		FUNC10(&ar->scan.completed);
		FUNC10(&ar->scan.on_channel);
		ar->scan.state = ATH10K_SCAN_STARTING;
		ar->scan.is_roc = true;
		ar->scan.vdev_id = arvif->vdev_id;
		ar->scan.roc_freq = chan->center_freq;
		ar->scan.roc_notify = true;
		ret = 0;
		break;
	case ATH10K_SCAN_STARTING:
	case ATH10K_SCAN_RUNNING:
	case ATH10K_SCAN_ABORTING:
		ret = -EBUSY;
		break;
	}
	FUNC12(&ar->data_lock);

	if (ret)
		goto exit;

	scan_time_msec = ar->hw->wiphy->max_remain_on_channel_duration * 2;

	FUNC6(&arg, 0, sizeof(arg));
	FUNC4(ar, &arg);
	arg.vdev_id = arvif->vdev_id;
	arg.scan_id = ATH10K_SCAN_ID;
	arg.n_channels = 1;
	arg.channels[0] = chan->center_freq;
	arg.dwell_time_active = scan_time_msec;
	arg.dwell_time_passive = scan_time_msec;
	arg.max_scan_time = scan_time_msec;
	arg.scan_ctrl_flags |= WMI_SCAN_FLAG_PASSIVE;
	arg.scan_ctrl_flags |= WMI_SCAN_FILTER_PROBE_REQ;
	arg.burst_duration_ms = duration;

	ret = FUNC2(ar, &arg);
	if (ret) {
		FUNC3(ar, "failed to start roc scan: %d\n", ret);
		FUNC11(&ar->data_lock);
		ar->scan.state = ATH10K_SCAN_IDLE;
		FUNC12(&ar->data_lock);
		goto exit;
	}

	ret = FUNC13(&ar->scan.on_channel, 3 * HZ);
	if (ret == 0) {
		FUNC3(ar, "failed to switch to channel for roc scan\n");

		ret = FUNC1(ar);
		if (ret)
			FUNC3(ar, "failed to stop scan: %d\n", ret);

		ret = -ETIMEDOUT;
		goto exit;
	}

	FUNC5(ar->hw, &ar->scan.timeout,
				     FUNC7(duration));

	ret = 0;
exit:
	FUNC9(&ar->conf_mutex);
	return ret;
}