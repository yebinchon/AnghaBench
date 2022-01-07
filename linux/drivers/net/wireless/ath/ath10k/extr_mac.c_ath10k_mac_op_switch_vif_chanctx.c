
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif_chanctx_switch {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int conf_mutex; } ;
typedef enum ieee80211_chanctx_switch_mode { ____Placeholder_ieee80211_chanctx_switch_mode } ieee80211_chanctx_switch_mode ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 int ath10k_mac_update_vif_chan (struct ath10k*,struct ieee80211_vif_chanctx_switch*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
ath10k_mac_op_switch_vif_chanctx(struct ieee80211_hw *hw,
     struct ieee80211_vif_chanctx_switch *vifs,
     int n_vifs,
     enum ieee80211_chanctx_switch_mode mode)
{
 struct ath10k *ar = hw->priv;

 mutex_lock(&ar->conf_mutex);

 ath10k_dbg(ar, ATH10K_DBG_MAC,
     "mac chanctx switch n_vifs %d mode %d\n",
     n_vifs, mode);
 ath10k_mac_update_vif_chan(ar, vifs, n_vifs);

 mutex_unlock(&ar->conf_mutex);
 return 0;
}
