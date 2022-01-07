
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {int ucode_trace; int statistics_periodic; TYPE_1__* lib; int bt_runtime_config; int bt_full_concurrency; int tx_flush; int run_time_calib_work; int beacon_update; int restart; int workqueue; } ;
struct TYPE_2__ {scalar_t__ bt_params; } ;


 int DRV_NAME ;
 int INIT_WORK (int *,int ) ;
 int alloc_ordered_workqueue (int ,int ) ;
 int iwl_bg_beacon_update ;
 int iwl_bg_bt_full_concurrency ;
 int iwl_bg_bt_runtime_config ;
 int iwl_bg_restart ;
 int iwl_bg_run_time_calib_work ;
 int iwl_bg_statistics_periodic ;
 int iwl_bg_tx_flush ;
 int iwl_bg_ucode_trace ;
 int iwl_setup_scan_deferred_work (struct iwl_priv*) ;
 int iwlagn_bt_setup_deferred_work (struct iwl_priv*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void iwl_setup_deferred_work(struct iwl_priv *priv)
{
 priv->workqueue = alloc_ordered_workqueue(DRV_NAME, 0);

 INIT_WORK(&priv->restart, iwl_bg_restart);
 INIT_WORK(&priv->beacon_update, iwl_bg_beacon_update);
 INIT_WORK(&priv->run_time_calib_work, iwl_bg_run_time_calib_work);
 INIT_WORK(&priv->tx_flush, iwl_bg_tx_flush);
 INIT_WORK(&priv->bt_full_concurrency, iwl_bg_bt_full_concurrency);
 INIT_WORK(&priv->bt_runtime_config, iwl_bg_bt_runtime_config);

 iwl_setup_scan_deferred_work(priv);

 if (priv->lib->bt_params)
  iwlagn_bt_setup_deferred_work(priv);

 timer_setup(&priv->statistics_periodic, iwl_bg_statistics_periodic, 0);

 timer_setup(&priv->ucode_trace, iwl_bg_ucode_trace, 0);
}
