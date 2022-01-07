
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct il_priv {int disable_tx_power_cal; int disable_chain_noise_cal; TYPE_3__* cfg; int disable_sens_cal; struct dentry* debugfs_dir; TYPE_2__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {scalar_t__ chain_noise_calib_by_driver; scalar_t__ sensitivity_calib_by_driver; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {struct dentry* debugfsdir; } ;


 int DEBUGFS_ADD_BOOL (int ,struct dentry*,int *) ;
 int DEBUGFS_ADD_FILE (int ,struct dentry*,int) ;
 int chain_noise ;
 int channels ;
 int clear_traffic_stats ;
 int clear_ucode_stats ;
 struct dentry* debugfs_create_dir (char const*,struct dentry*) ;
 int disable_chain_noise ;
 int disable_ht40 ;
 int disable_sensitivity ;
 int disable_tx_power ;
 int fh_reg ;
 int force_reset ;
 int interrupt ;
 int missed_beacon ;
 int nvm ;
 int power_save_status ;
 int qos ;
 int rx_queue ;
 int rx_stats ;
 int rxon_filter_flags ;
 int rxon_flags ;
 int sensitivity ;
 int sram ;
 int stations ;
 int status ;
 int tx_queue ;
 int tx_stats ;
 int ucode_general_stats ;
 int ucode_rx_stats ;
 int ucode_tx_stats ;
 int wd_timeout ;

void
il_dbgfs_register(struct il_priv *il, const char *name)
{
 struct dentry *phyd = il->hw->wiphy->debugfsdir;
 struct dentry *dir_drv, *dir_data, *dir_rf, *dir_debug;

 dir_drv = debugfs_create_dir(name, phyd);
 il->debugfs_dir = dir_drv;

 dir_data = debugfs_create_dir("data", dir_drv);
 dir_rf = debugfs_create_dir("rf", dir_drv);
 dir_debug = debugfs_create_dir("debug", dir_drv);

 DEBUGFS_ADD_FILE(nvm, dir_data, 0400);
 DEBUGFS_ADD_FILE(sram, dir_data, 0600);
 DEBUGFS_ADD_FILE(stations, dir_data, 0400);
 DEBUGFS_ADD_FILE(channels, dir_data, 0400);
 DEBUGFS_ADD_FILE(status, dir_data, 0400);
 DEBUGFS_ADD_FILE(interrupt, dir_data, 0600);
 DEBUGFS_ADD_FILE(qos, dir_data, 0400);
 DEBUGFS_ADD_FILE(disable_ht40, dir_data, 0600);
 DEBUGFS_ADD_FILE(rx_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(tx_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(rx_queue, dir_debug, 0400);
 DEBUGFS_ADD_FILE(tx_queue, dir_debug, 0400);
 DEBUGFS_ADD_FILE(power_save_status, dir_debug, 0400);
 DEBUGFS_ADD_FILE(clear_ucode_stats, dir_debug, 0200);
 DEBUGFS_ADD_FILE(clear_traffic_stats, dir_debug, 0200);
 DEBUGFS_ADD_FILE(fh_reg, dir_debug, 0400);
 DEBUGFS_ADD_FILE(missed_beacon, dir_debug, 0200);
 DEBUGFS_ADD_FILE(force_reset, dir_debug, 0600);
 DEBUGFS_ADD_FILE(ucode_rx_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(ucode_tx_stats, dir_debug, 0400);
 DEBUGFS_ADD_FILE(ucode_general_stats, dir_debug, 0400);

 if (il->cfg->sensitivity_calib_by_driver)
  DEBUGFS_ADD_FILE(sensitivity, dir_debug, 0400);
 if (il->cfg->chain_noise_calib_by_driver)
  DEBUGFS_ADD_FILE(chain_noise, dir_debug, 0400);
 DEBUGFS_ADD_FILE(rxon_flags, dir_debug, 0200);
 DEBUGFS_ADD_FILE(rxon_filter_flags, dir_debug, 0200);
 DEBUGFS_ADD_FILE(wd_timeout, dir_debug, 0200);
 if (il->cfg->sensitivity_calib_by_driver)
  DEBUGFS_ADD_BOOL(disable_sensitivity, dir_rf,
     &il->disable_sens_cal);
 if (il->cfg->chain_noise_calib_by_driver)
  DEBUGFS_ADD_BOOL(disable_chain_noise, dir_rf,
     &il->disable_chain_noise_cal);
 DEBUGFS_ADD_BOOL(disable_tx_power, dir_rf, &il->disable_tx_power_cal);
}
