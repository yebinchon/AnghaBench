
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k_vif {int def_wep_key_idx; TYPE_3__* ar; int vdev_id; } ;
struct ath10k {int dummy; } ;
struct TYPE_5__ {TYPE_1__* vdev_param; } ;
struct TYPE_6__ {scalar_t__ state; int conf_mutex; TYPE_2__ wmi; } ;
struct TYPE_4__ {int def_keyid; } ;


 int ATH10K_DBG_MAC ;
 scalar_t__ ATH10K_STATE_ON ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_set_param (TYPE_3__*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath10k_set_default_unicast_key(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        int keyidx)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 int ret;

 mutex_lock(&arvif->ar->conf_mutex);

 if (arvif->ar->state != ATH10K_STATE_ON)
  goto unlock;

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac vdev %d set keyidx %d\n",
     arvif->vdev_id, keyidx);

 ret = ath10k_wmi_vdev_set_param(arvif->ar,
     arvif->vdev_id,
     arvif->ar->wmi.vdev_param->def_keyid,
     keyidx);

 if (ret) {
  ath10k_warn(ar, "failed to update wep key index for vdev %d: %d\n",
       arvif->vdev_id,
       ret);
  goto unlock;
 }

 arvif->def_wep_key_idx = keyidx;

unlock:
 mutex_unlock(&arvif->ar->conf_mutex);
}
