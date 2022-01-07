
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int op_flags; } ;
struct ath9k_htc_priv {int mutex; int ps_work; int beacon_lock; int ah; } ;


 int ATH_OP_SCANNING ;
 int ath9k_htc_stop_ani (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath9k_htc_sw_scan_start(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        const u8 *mac_addr)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);

 mutex_lock(&priv->mutex);
 spin_lock_bh(&priv->beacon_lock);
 set_bit(ATH_OP_SCANNING, &common->op_flags);
 spin_unlock_bh(&priv->beacon_lock);
 cancel_work_sync(&priv->ps_work);
 ath9k_htc_stop_ani(priv);
 mutex_unlock(&priv->mutex);
}
