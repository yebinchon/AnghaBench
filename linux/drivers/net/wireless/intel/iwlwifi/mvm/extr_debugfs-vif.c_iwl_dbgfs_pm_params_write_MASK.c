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
struct iwl_mvm_vif {struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  enum iwl_dbgfs_pm_mask { ____Placeholder_iwl_dbgfs_pm_mask } iwl_dbgfs_pm_mask ;

/* Variables and functions */
 size_t EINVAL ; 
 int MVM_DEBUGFS_PM_KEEP_ALIVE ; 
 int MVM_DEBUGFS_PM_LPRX_ENA ; 
 int MVM_DEBUGFS_PM_LPRX_RSSI_THRESHOLD ; 
 int MVM_DEBUGFS_PM_RX_DATA_TIMEOUT ; 
 int MVM_DEBUGFS_PM_SKIP_DTIM_PERIODS ; 
 int MVM_DEBUGFS_PM_SKIP_OVER_DTIM ; 
 int MVM_DEBUGFS_PM_SNOOZE_ENABLE ; 
 int MVM_DEBUGFS_PM_TX_DATA_TIMEOUT ; 
 int MVM_DEBUGFS_PM_UAPSD_MISBEHAVING ; 
 int MVM_DEBUGFS_PM_USE_PS_POLL ; 
 int POWER_LPRX_RSSI_THRESHOLD_MAX ; 
 int POWER_LPRX_RSSI_THRESHOLD_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 int FUNC1 (struct iwl_mvm*) ; 
 struct iwl_mvm_vif* FUNC2 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct ieee80211_vif *vif, char *buf,
					 size_t count, loff_t *ppos)
{
	struct iwl_mvm_vif *mvmvif = FUNC2(vif);
	struct iwl_mvm *mvm = mvmvif->mvm;
	enum iwl_dbgfs_pm_mask param;
	int val, ret;

	if (!FUNC6("keep_alive=", buf, 11)) {
		if (FUNC5(buf + 11, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_KEEP_ALIVE;
	} else if (!FUNC6("skip_over_dtim=", buf, 15)) {
		if (FUNC5(buf + 15, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_SKIP_OVER_DTIM;
	} else if (!FUNC6("skip_dtim_periods=", buf, 18)) {
		if (FUNC5(buf + 18, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_SKIP_DTIM_PERIODS;
	} else if (!FUNC6("rx_data_timeout=", buf, 16)) {
		if (FUNC5(buf + 16, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_RX_DATA_TIMEOUT;
	} else if (!FUNC6("tx_data_timeout=", buf, 16)) {
		if (FUNC5(buf + 16, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_TX_DATA_TIMEOUT;
	} else if (!FUNC6("lprx=", buf, 5)) {
		if (FUNC5(buf + 5, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_LPRX_ENA;
	} else if (!FUNC6("lprx_rssi_threshold=", buf, 20)) {
		if (FUNC5(buf + 20, "%d", &val) != 1)
			return -EINVAL;
		if (val > POWER_LPRX_RSSI_THRESHOLD_MAX || val <
		    POWER_LPRX_RSSI_THRESHOLD_MIN)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_LPRX_RSSI_THRESHOLD;
	} else if (!FUNC6("snooze_enable=", buf, 14)) {
		if (FUNC5(buf + 14, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_SNOOZE_ENABLE;
	} else if (!FUNC6("uapsd_misbehaving=", buf, 18)) {
		if (FUNC5(buf + 18, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_UAPSD_MISBEHAVING;
	} else if (!FUNC6("use_ps_poll=", buf, 12)) {
		if (FUNC5(buf + 12, "%d", &val) != 1)
			return -EINVAL;
		param = MVM_DEBUGFS_PM_USE_PS_POLL;
	} else {
		return -EINVAL;
	}

	FUNC3(&mvm->mutex);
	FUNC0(mvm, vif, param, val);
	ret = FUNC1(mvm);
	FUNC4(&mvm->mutex);

	return ret ?: count;
}