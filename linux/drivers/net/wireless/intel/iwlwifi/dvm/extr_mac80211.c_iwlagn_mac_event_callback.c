
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iwl_priv {int bt_enable_pspoll; int bt_runtime_config; int workqueue; TYPE_2__* lib; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_8__ {TYPE_3__ rssi; } ;
struct ieee80211_event {scalar_t__ type; TYPE_4__ u; } ;
struct TYPE_6__ {TYPE_1__* bt_params; } ;
struct TYPE_5__ {scalar_t__ advanced_bt_coexist; } ;


 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 scalar_t__ RSSI_EVENT ;
 scalar_t__ RSSI_EVENT_HIGH ;
 scalar_t__ RSSI_EVENT_LOW ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void iwlagn_mac_event_callback(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          const struct ieee80211_event *event)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 if (event->type != RSSI_EVENT)
  return;

 IWL_DEBUG_MAC80211(priv, "enter\n");

 if (priv->lib->bt_params &&
     priv->lib->bt_params->advanced_bt_coexist) {
  if (event->u.rssi.data == RSSI_EVENT_LOW)
   priv->bt_enable_pspoll = 1;
  else if (event->u.rssi.data == RSSI_EVENT_HIGH)
   priv->bt_enable_pspoll = 0;

  queue_work(priv->workqueue, &priv->bt_runtime_config);
 } else {
  IWL_DEBUG_MAC80211(priv, "Advanced BT coex disabled,"
    "ignoring RSSI callback\n");
 }

 IWL_DEBUG_MAC80211(priv, "leave\n");
}
