
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int num_sta_assoc_vif; int hw; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ath9k_htc_bss_iter ;
 int ath9k_htc_set_bssid (struct ath9k_htc_priv*) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath9k_htc_priv*) ;

__attribute__((used)) static void ath9k_htc_choose_set_bssid(struct ath9k_htc_priv *priv)
{
 if (priv->num_sta_assoc_vif == 1) {
  ieee80211_iterate_active_interfaces_atomic(
   priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
   ath9k_htc_bss_iter, priv);
  ath9k_htc_set_bssid(priv);
 }
}
