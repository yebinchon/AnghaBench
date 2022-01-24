#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int max_power; int max_reg_power; int max_antenna_gain; int chan_radar; int /*<<< orphan*/  mode; int /*<<< orphan*/  freq; scalar_t__ min_power; int /*<<< orphan*/  band_center_freq2; int /*<<< orphan*/  band_center_freq1; } ;
struct wmi_vdev_start_request_arg {int /*<<< orphan*/  vdev_id; TYPE_6__ channel; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  hidden_ssid; int /*<<< orphan*/  bcn_intval; int /*<<< orphan*/  dtim_period; } ;
struct cfg80211_chan_def {TYPE_3__* chan; int /*<<< orphan*/  center_freq2; int /*<<< orphan*/  center_freq1; } ;
struct TYPE_7__ {int /*<<< orphan*/  hidden_ssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_8__ {TYPE_1__ ap; } ;
struct ath10k_vif {scalar_t__ vdev_type; TYPE_5__* vif; TYPE_2__ u; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  vdev_id; struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  num_started_vdevs; int /*<<< orphan*/  vdev_delete_done; int /*<<< orphan*/  vdev_setup_done; int /*<<< orphan*/  conf_mutex; } ;
struct TYPE_10__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_11__ {TYPE_4__ bss_conf; } ;
struct TYPE_9__ {int max_power; int max_reg_power; int max_antenna_gain; int flags; int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int IEEE80211_CHAN_RADAR ; 
 scalar_t__ WMI_VDEV_TYPE_AP ; 
 scalar_t__ WMI_VDEV_TYPE_IBSS ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath10k*,struct wmi_vdev_start_request_arg*) ; 
 int FUNC6 (struct ath10k*,struct wmi_vdev_start_request_arg*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ath10k_vif *arvif,
				     const struct cfg80211_chan_def *chandef,
				     bool restart)
{
	struct ath10k *ar = arvif->ar;
	struct wmi_vdev_start_request_arg arg = {};
	int ret = 0;

	FUNC8(&ar->conf_mutex);

	FUNC9(&ar->vdev_setup_done);
	FUNC9(&ar->vdev_delete_done);

	arg.vdev_id = arvif->vdev_id;
	arg.dtim_period = arvif->dtim_period;
	arg.bcn_intval = arvif->beacon_interval;

	arg.channel.freq = chandef->chan->center_freq;
	arg.channel.band_center_freq1 = chandef->center_freq1;
	arg.channel.band_center_freq2 = chandef->center_freq2;
	arg.channel.mode = FUNC7(chandef);

	arg.channel.min_power = 0;
	arg.channel.max_power = chandef->chan->max_power * 2;
	arg.channel.max_reg_power = chandef->chan->max_reg_power * 2;
	arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain * 2;

	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
		arg.ssid = arvif->u.ap.ssid;
		arg.ssid_len = arvif->u.ap.ssid_len;
		arg.hidden_ssid = arvif->u.ap.hidden_ssid;

		/* For now allow DFS for AP mode */
		arg.channel.chan_radar =
			!!(chandef->chan->flags & IEEE80211_CHAN_RADAR);
	} else if (arvif->vdev_type == WMI_VDEV_TYPE_IBSS) {
		arg.ssid = arvif->vif->bss_conf.ssid;
		arg.ssid_len = arvif->vif->bss_conf.ssid_len;
	}

	FUNC0(ar, ATH10K_DBG_MAC,
		   "mac vdev %d start center_freq %d phymode %s\n",
		   arg.vdev_id, arg.channel.freq,
		   FUNC4(arg.channel.mode));

	if (restart)
		ret = FUNC5(ar, &arg);
	else
		ret = FUNC6(ar, &arg);

	if (ret) {
		FUNC3(ar, "failed to start WMI vdev %i: %d\n",
			    arg.vdev_id, ret);
		return ret;
	}

	ret = FUNC2(ar);
	if (ret) {
		FUNC3(ar,
			    "failed to synchronize setup for vdev %i restart %d: %d\n",
			    arg.vdev_id, restart, ret);
		return ret;
	}

	ar->num_started_vdevs++;
	FUNC1(ar);

	return ret;
}