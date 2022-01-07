
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {scalar_t__ bt_traffic_load; scalar_t__ bt_is_sco; } ;


 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_CONTINUOUS ;
 int iwlagn_bt_adjust_rssi_monitor (struct iwl_priv*,int) ;

void iwlagn_bt_coex_rssi_monitor(struct iwl_priv *priv)
{
 if (priv->bt_is_sco &&
     priv->bt_traffic_load == IWL_BT_COEX_TRAFFIC_LOAD_CONTINUOUS)
  iwlagn_bt_adjust_rssi_monitor(priv, 1);
 else
  iwlagn_bt_adjust_rssi_monitor(priv, 0);
}
