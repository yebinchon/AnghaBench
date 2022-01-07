
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_station_priv {int asleep; int client; int pending_frames; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;


 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 int IWL_INVALID_STATION ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;


 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int ieee80211_sta_block_awake (struct ieee80211_hw*,struct ieee80211_sta*,int) ;
 int iwl_sta_id (struct ieee80211_sta*) ;
 int iwl_sta_modify_ps_wake (struct iwl_priv*,int) ;

__attribute__((used)) static void iwlagn_mac_sta_notify(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      enum sta_notify_cmd cmd,
      struct ieee80211_sta *sta)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
 int sta_id;

 IWL_DEBUG_MAC80211(priv, "enter\n");

 switch (cmd) {
 case 128:
  WARN_ON(!sta_priv->client);
  sta_priv->asleep = 1;
  if (atomic_read(&sta_priv->pending_frames) > 0)
   ieee80211_sta_block_awake(hw, sta, 1);
  break;
 case 129:
  WARN_ON(!sta_priv->client);
  if (!sta_priv->asleep)
   break;
  sta_priv->asleep = 0;
  sta_id = iwl_sta_id(sta);
  if (sta_id != IWL_INVALID_STATION)
   iwl_sta_modify_ps_wake(priv, sta_id);
  break;
 default:
  break;
 }
 IWL_DEBUG_MAC80211(priv, "leave\n");
}
