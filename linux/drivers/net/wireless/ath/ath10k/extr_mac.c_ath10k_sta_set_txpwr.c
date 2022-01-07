
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ power; } ;
struct ieee80211_sta {int addr; TYPE_1__ txpwr; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int vdev_id; } ;
struct ath10k {int conf_mutex; } ;
typedef scalar_t__ s16 ;


 scalar_t__ ATH10K_TX_POWER_MAX_VAL ;
 scalar_t__ ATH10K_TX_POWER_MIN_VAL ;
 int EINVAL ;
 scalar_t__ NL80211_TX_POWER_AUTOMATIC ;
 int WMI_PEER_USE_FIXED_PWR ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_peer_set_param (struct ath10k*,int ,int ,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_sta_set_txpwr(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 int ret = 0;
 s16 txpwr;

 if (sta->txpwr.type == NL80211_TX_POWER_AUTOMATIC) {
  txpwr = 0;
 } else {
  txpwr = sta->txpwr.power;
  if (!txpwr)
   return -EINVAL;
 }

 if (txpwr > ATH10K_TX_POWER_MAX_VAL || txpwr < ATH10K_TX_POWER_MIN_VAL)
  return -EINVAL;

 mutex_lock(&ar->conf_mutex);

 ret = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, sta->addr,
     WMI_PEER_USE_FIXED_PWR, txpwr);
 if (ret) {
  ath10k_warn(ar, "failed to set tx power for station ret: %d\n",
       ret);
  goto out;
 }

out:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
