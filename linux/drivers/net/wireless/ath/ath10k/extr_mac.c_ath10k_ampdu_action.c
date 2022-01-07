
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_ampdu_params {int action; int tid; struct ieee80211_sta* sta; } ;
struct ath10k_vif {int vdev_id; } ;
struct ath10k {int dummy; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int ATH10K_DBG_MAC ;
 int EINVAL ;
 int EOPNOTSUPP ;







 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int) ;

__attribute__((used)) static int ath10k_ampdu_action(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_ampdu_params *params)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac ampdu vdev_id %i sta %pM tid %hu action %d\n",
     arvif->vdev_id, sta->addr, tid, action);

 switch (action) {
 case 134:
 case 133:



  return 0;
 case 131:
 case 130:
 case 129:
 case 128:
 case 132:



  return -EOPNOTSUPP;
 }

 return -EINVAL;
}
