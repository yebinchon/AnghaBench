
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {int ucode_trace; int statistics_periodic; int bt_runtime_config; int bt_full_concurrency; int beacon_update; int run_time_calib_work; TYPE_1__* lib; } ;
struct TYPE_2__ {scalar_t__ bt_params; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int iwl_cancel_scan_deferred_work (struct iwl_priv*) ;
 int iwlagn_bt_cancel_deferred_work (struct iwl_priv*) ;

void iwl_cancel_deferred_work(struct iwl_priv *priv)
{
 if (priv->lib->bt_params)
  iwlagn_bt_cancel_deferred_work(priv);

 cancel_work_sync(&priv->run_time_calib_work);
 cancel_work_sync(&priv->beacon_update);

 iwl_cancel_scan_deferred_work(priv);

 cancel_work_sync(&priv->bt_full_concurrency);
 cancel_work_sync(&priv->bt_runtime_config);

 del_timer_sync(&priv->statistics_periodic);
 del_timer_sync(&priv->ucode_trace);
}
