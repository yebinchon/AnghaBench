
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ath10k {int conf_mutex; } ;


 int ath10k_peer_assoc_h_basic (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_peer_assoc_h_crypto (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_peer_assoc_h_ht (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_peer_assoc_h_phymode (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_peer_assoc_h_qos (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_peer_assoc_h_rates (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_peer_assoc_h_vht (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int lockdep_assert_held (int *) ;
 int memset (struct wmi_peer_assoc_complete_arg*,int ,int) ;

__attribute__((used)) static int ath10k_peer_assoc_prepare(struct ath10k *ar,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta,
         struct wmi_peer_assoc_complete_arg *arg)
{
 lockdep_assert_held(&ar->conf_mutex);

 memset(arg, 0, sizeof(*arg));

 ath10k_peer_assoc_h_basic(ar, vif, sta, arg);
 ath10k_peer_assoc_h_crypto(ar, vif, sta, arg);
 ath10k_peer_assoc_h_rates(ar, vif, sta, arg);
 ath10k_peer_assoc_h_ht(ar, vif, sta, arg);
 ath10k_peer_assoc_h_vht(ar, vif, sta, arg);
 ath10k_peer_assoc_h_qos(ar, vif, sta, arg);
 ath10k_peer_assoc_h_phymode(ar, vif, sta, arg);

 return 0;
}
