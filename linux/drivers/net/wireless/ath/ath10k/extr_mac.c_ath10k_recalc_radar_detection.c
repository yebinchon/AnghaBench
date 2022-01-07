
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {scalar_t__ num_started_vdevs; int hw; int conf_mutex; } ;


 int ath10k_mac_has_radar_enabled (struct ath10k*) ;
 int ath10k_start_cac (struct ath10k*) ;
 int ath10k_stop_cac (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ieee80211_radar_detected (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_recalc_radar_detection(struct ath10k *ar)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ath10k_stop_cac(ar);

 if (!ath10k_mac_has_radar_enabled(ar))
  return;

 if (ar->num_started_vdevs > 0)
  return;

 ret = ath10k_start_cac(ar);
 if (ret) {





  ath10k_warn(ar, "failed to start CAC: %d\n", ret);
  ieee80211_radar_detected(ar->hw);
 }
}
