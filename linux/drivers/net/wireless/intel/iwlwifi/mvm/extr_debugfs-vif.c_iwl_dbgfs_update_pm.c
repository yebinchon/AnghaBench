
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_dbgfs_pm {int mask; int keep_alive_seconds; int skip_over_dtim; int skip_dtim_periods; int rx_data_timeout; int tx_data_timeout; int lprx_ena; int lprx_rssi_threshold; int snooze_ena; int uapsd_misbehaving; int use_ps_poll; } ;
struct iwl_mvm_vif {struct iwl_dbgfs_pm dbgfs_pm; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int beacon_int; int dtim_period; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
typedef enum iwl_dbgfs_pm_mask { ____Placeholder_iwl_dbgfs_pm_mask } iwl_dbgfs_pm_mask ;


 int IWL_DEBUG_POWER (struct iwl_mvm*,char*,...) ;
 int IWL_WARN (struct iwl_mvm*,char*,int,int) ;
 int MSEC_PER_SEC ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_dbgfs_update_pm(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     enum iwl_dbgfs_pm_mask param, int val)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_dbgfs_pm *dbgfs_pm = &mvmvif->dbgfs_pm;

 dbgfs_pm->mask |= param;

 switch (param) {
 case 137: {
  int dtimper = vif->bss_conf.dtim_period ?: 1;
  int dtimper_msec = dtimper * vif->bss_conf.beacon_int;

  IWL_DEBUG_POWER(mvm, "debugfs: set keep_alive= %d sec\n", val);
  if (val * MSEC_PER_SEC < 3 * dtimper_msec)
   IWL_WARN(mvm,
     "debugfs: keep alive period (%ld msec) is less than minimum required (%d msec)\n",
     val * MSEC_PER_SEC, 3 * dtimper_msec);
  dbgfs_pm->keep_alive_seconds = val;
  break;
 }
 case 132:
  IWL_DEBUG_POWER(mvm, "skip_over_dtim %s\n",
    val ? "enabled" : "disabled");
  dbgfs_pm->skip_over_dtim = val;
  break;
 case 133:
  IWL_DEBUG_POWER(mvm, "skip_dtim_periods=%d\n", val);
  dbgfs_pm->skip_dtim_periods = val;
  break;
 case 134:
  IWL_DEBUG_POWER(mvm, "rx_data_timeout=%d\n", val);
  dbgfs_pm->rx_data_timeout = val;
  break;
 case 130:
  IWL_DEBUG_POWER(mvm, "tx_data_timeout=%d\n", val);
  dbgfs_pm->tx_data_timeout = val;
  break;
 case 136:
  IWL_DEBUG_POWER(mvm, "lprx %s\n", val ? "enabled" : "disabled");
  dbgfs_pm->lprx_ena = val;
  break;
 case 135:
  IWL_DEBUG_POWER(mvm, "lprx_rssi_threshold=%d\n", val);
  dbgfs_pm->lprx_rssi_threshold = val;
  break;
 case 131:
  IWL_DEBUG_POWER(mvm, "snooze_enable=%d\n", val);
  dbgfs_pm->snooze_ena = val;
  break;
 case 129:
  IWL_DEBUG_POWER(mvm, "uapsd_misbehaving_enable=%d\n", val);
  dbgfs_pm->uapsd_misbehaving = val;
  break;
 case 128:
  IWL_DEBUG_POWER(mvm, "use_ps_poll=%d\n", val);
  dbgfs_pm->use_ps_poll = val;
  break;
 }
}
