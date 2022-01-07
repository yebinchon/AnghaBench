
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct il_priv {int mutex; int status; TYPE_1__* cfg; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct ieee80211_ampdu_params {int action; int ssn; int tid; struct ieee80211_sta* sta; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_2__ {int sku; } ;


 int D_HT (char*,...) ;
 int EACCES ;
 int EINVAL ;







 int IL_SKU_N ;
 int S_EXIT_PENDING ;
 int il4965_sta_rx_agg_start (struct il_priv*,struct ieee80211_sta*,int ,int ) ;
 int il4965_sta_rx_agg_stop (struct il_priv*,struct ieee80211_sta*,int ) ;
 int il4965_tx_agg_start (struct il_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int ,int *) ;
 int il4965_tx_agg_stop (struct il_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

int
il4965_mac_ampdu_action(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
   struct ieee80211_ampdu_params *params)
{
 struct il_priv *il = hw->priv;
 int ret = -EINVAL;
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;
 u16 *ssn = &params->ssn;

 D_HT("A-MPDU action on addr %pM tid %d\n", sta->addr, tid);

 if (!(il->cfg->sku & IL_SKU_N))
  return -EACCES;

 mutex_lock(&il->mutex);

 switch (action) {
 case 134:
  D_HT("start Rx\n");
  ret = il4965_sta_rx_agg_start(il, sta, tid, *ssn);
  break;
 case 133:
  D_HT("stop Rx\n");
  ret = il4965_sta_rx_agg_stop(il, sta, tid);
  if (test_bit(S_EXIT_PENDING, &il->status))
   ret = 0;
  break;
 case 131:
  D_HT("start Tx\n");
  ret = il4965_tx_agg_start(il, vif, sta, tid, ssn);
  break;
 case 130:
 case 129:
 case 128:
  D_HT("stop Tx\n");
  ret = il4965_tx_agg_stop(il, vif, sta, tid);
  if (test_bit(S_EXIT_PENDING, &il->status))
   ret = 0;
  break;
 case 132:
  ret = 0;
  break;
 }
 mutex_unlock(&il->mutex);

 return ret;
}
