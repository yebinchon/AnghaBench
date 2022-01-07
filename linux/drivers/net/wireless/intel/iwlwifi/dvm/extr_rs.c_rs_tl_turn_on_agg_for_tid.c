
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_priv {scalar_t__ bt_traffic_load; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int addr; } ;


 int EAGAIN ;
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ;
 int IWL_DEBUG_COEX (struct iwl_priv*,char*,scalar_t__) ;
 int IWL_DEBUG_HT (struct iwl_priv*,char*,int ,int ) ;
 int IWL_ERR (struct iwl_priv*,char*,int ) ;
 int ieee80211_start_tx_ba_session (struct ieee80211_sta*,int ,int) ;
 int ieee80211_stop_tx_ba_session (struct ieee80211_sta*,int ) ;
 int rs_tl_get_load (struct iwl_lq_sta*,int ) ;

__attribute__((used)) static int rs_tl_turn_on_agg_for_tid(struct iwl_priv *priv,
          struct iwl_lq_sta *lq_data, u8 tid,
          struct ieee80211_sta *sta)
{
 int ret = -EAGAIN;





 if (priv->bt_traffic_load >= IWL_BT_COEX_TRAFFIC_LOAD_HIGH) {
  IWL_DEBUG_COEX(priv,
          "BT traffic (%d), no aggregation allowed\n",
          priv->bt_traffic_load);
  return ret;
 }

 rs_tl_get_load(lq_data, tid);

 IWL_DEBUG_HT(priv, "Starting Tx agg: STA: %pM tid: %d\n",
   sta->addr, tid);
 ret = ieee80211_start_tx_ba_session(sta, tid, 5000);
 if (ret == -EAGAIN) {





  IWL_ERR(priv, "Fail start Tx agg on tid: %d\n",
   tid);
  ieee80211_stop_tx_ba_session(sta, tid);
 }
 return ret;
}
