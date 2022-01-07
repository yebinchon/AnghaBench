
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int tdls; } ;
struct ath10k_vif {scalar_t__ vdev_type; struct ath10k* ar; } ;
struct ath10k {int num_stations; int conf_mutex; } ;


 scalar_t__ WMI_VDEV_TYPE_STA ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_mac_dec_num_stations(struct ath10k_vif *arvif,
     struct ieee80211_sta *sta)
{
 struct ath10k *ar = arvif->ar;

 lockdep_assert_held(&ar->conf_mutex);

 if (arvif->vdev_type == WMI_VDEV_TYPE_STA && !sta->tdls)
  return;

 ar->num_stations--;
}
