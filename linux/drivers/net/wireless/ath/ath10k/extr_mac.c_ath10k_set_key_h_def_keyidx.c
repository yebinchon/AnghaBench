
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_key_conf {scalar_t__ cipher; int flags; int keyidx; } ;
struct ath10k_vif {scalar_t__ vdev_type; int vdev_id; TYPE_3__* ar; } ;
struct ath10k {int dummy; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_5__ {TYPE_1__* vdev_param; } ;
struct TYPE_6__ {TYPE_2__ wmi; } ;
struct TYPE_4__ {int def_keyid; } ;


 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int SET_KEY ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 scalar_t__ WMI_VDEV_TYPE_AP ;
 scalar_t__ WMI_VDEV_TYPE_IBSS ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_set_param (struct ath10k*,int ,int ,int ) ;

__attribute__((used)) static void ath10k_set_key_h_def_keyidx(struct ath10k *ar,
     struct ath10k_vif *arvif,
     enum set_key_cmd cmd,
     struct ieee80211_key_conf *key)
{
 u32 vdev_param = arvif->ar->wmi.vdev_param->def_keyid;
 int ret;
 if (arvif->vdev_type != WMI_VDEV_TYPE_AP &&
     arvif->vdev_type != WMI_VDEV_TYPE_IBSS)
  return;

 if (key->cipher == WLAN_CIPHER_SUITE_WEP40)
  return;

 if (key->cipher == WLAN_CIPHER_SUITE_WEP104)
  return;

 if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
  return;

 if (cmd != SET_KEY)
  return;

 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
     key->keyidx);
 if (ret)
  ath10k_warn(ar, "failed to set vdev %i group key as default key: %d\n",
       arvif->vdev_id, ret);
}
