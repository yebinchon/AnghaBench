
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {TYPE_2__* hw; scalar_t__ mac80211_registered; struct dentry* debugfs_dir; } ;
struct dentry {struct dentry* d_parent; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {struct dentry* debugfsdir; } ;


 int DEBUGFS_ADD_FILE (int ,struct dentry*,int) ;
 int bt_traffic ;
 int calib_disabled ;
 int chain_noise ;
 int channels ;
 int clear_ucode_statistics ;
 int current_sleep_command ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_symlink (char*,struct dentry*,char*) ;
 int disable_ht40 ;
 int echo_test ;
 int fw_restart ;
 scalar_t__ iwl_advanced_bt_coexist (struct iwl_priv*) ;
 int log_event ;
 int missed_beacon ;
 int nvm ;
 int plcp_delta ;
 int power_save_status ;
 int protection_mode ;
 int qos ;
 int reply_tx_error ;
 int rf_reset ;
 int rx_handlers ;
 int rxon_filter_flags ;
 int rxon_flags ;
 int sensitivity ;
 int sleep_level_override ;
 int snprintf (char*,int,char*,struct dentry*) ;
 int sram ;
 int stations ;
 int status ;
 int temperature ;
 int thermal_throttling ;
 int txfifo_flush ;
 int ucode_bt_stats ;
 int ucode_general_stats ;
 int ucode_rx_stats ;
 int ucode_tracing ;
 int ucode_tx_stats ;
 int wowlan_sram ;

void iwl_dbgfs_register(struct iwl_priv *priv, struct dentry *dbgfs_dir)
{
 struct dentry *dir_data, *dir_rf, *dir_debug;

 priv->debugfs_dir = dbgfs_dir;

 dir_data = debugfs_create_dir("data", dbgfs_dir);
 dir_rf = debugfs_create_dir("rf", dbgfs_dir);
 dir_debug = debugfs_create_dir("debug", dbgfs_dir);

 DEBUGFS_ADD_FILE(nvm, dir_data, 0400);
 DEBUGFS_ADD_FILE(sram, dir_data, 0600);
 DEBUGFS_ADD_FILE(wowlan_sram, dir_data, 0400);
 DEBUGFS_ADD_FILE(stations, dir_data, 0400);
 DEBUGFS_ADD_FILE(channels, dir_data, 0400);
 DEBUGFS_ADD_FILE(status, dir_data, 0400);
 DEBUGFS_ADD_FILE(rx_handlers, dir_data, 0600);
 DEBUGFS_ADD_FILE(qos, dir_data, 0400);
 DEBUGFS_ADD_FILE(sleep_level_override, dir_data, 0600);
 DEBUGFS_ADD_FILE(current_sleep_command, dir_data, 0400);
 DEBUGFS_ADD_FILE(thermal_throttling, dir_data, 0400);
 DEBUGFS_ADD_FILE(disable_ht40, dir_data, 0600);
 DEBUGFS_ADD_FILE(temperature, dir_data, 0400);

 DEBUGFS_ADD_FILE(power_save_status, dir_debug, 0400);
 DEBUGFS_ADD_FILE(clear_ucode_statistics, dir_debug, 0200);
 DEBUGFS_ADD_FILE(missed_beacon, dir_debug, 0200);
 DEBUGFS_ADD_FILE(plcp_delta, dir_debug, 0600);
 DEBUGFS_ADD_FILE(rf_reset, dir_debug, 0600);
 DEBUGFS_ADD_FILE(ucode_rx_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(ucode_tx_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(ucode_general_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(txfifo_flush, dir_debug, 0200);
 DEBUGFS_ADD_FILE(protection_mode, dir_debug, 0600);
 DEBUGFS_ADD_FILE(sensitivity, dir_debug, 0400);
 DEBUGFS_ADD_FILE(chain_noise, dir_debug, 0400);
 DEBUGFS_ADD_FILE(ucode_tracing, dir_debug, 0600);
 DEBUGFS_ADD_FILE(ucode_bt_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(reply_tx_error, dir_debug, 0400);
 DEBUGFS_ADD_FILE(rxon_flags, dir_debug, 0200);
 DEBUGFS_ADD_FILE(rxon_filter_flags, dir_debug, 0200);
 DEBUGFS_ADD_FILE(echo_test, dir_debug, 0200);
 DEBUGFS_ADD_FILE(fw_restart, dir_debug, 0200);




 if (iwl_advanced_bt_coexist(priv))
  DEBUGFS_ADD_FILE(bt_traffic, dir_debug, 0400);


 DEBUGFS_ADD_FILE(calib_disabled, dir_rf, 0600);







 if (priv->mac80211_registered) {
  char buf[100];
  struct dentry *mac80211_dir, *dev_dir;

  dev_dir = dbgfs_dir->d_parent;
  mac80211_dir = priv->hw->wiphy->debugfsdir;

  snprintf(buf, 100, "../../%pd2", dev_dir);

  debugfs_create_symlink("iwlwifi", mac80211_dir, buf);
 }
}
