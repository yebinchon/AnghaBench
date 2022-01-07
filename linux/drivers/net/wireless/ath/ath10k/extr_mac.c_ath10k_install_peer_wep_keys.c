
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath10k_vif {int def_wep_key_idx; int vdev_id; struct ath10k* ar; TYPE_1__* vif; int ** wep_keys; } ;
struct ath10k_peer {int ** keys; } ;
struct TYPE_6__ {TYPE_2__* vdev_param; } ;
struct ath10k {TYPE_3__ wmi; int data_lock; int conf_mutex; } ;
struct TYPE_5__ {int def_keyid; } ;
struct TYPE_4__ {int type; } ;


 int ARRAY_SIZE (int **) ;
 int EINVAL ;
 int ENOENT ;


 int NL80211_IFTYPE_MESH_POINT ;
 int SET_KEY ;
 scalar_t__ WARN_ON (int) ;
 int WMI_KEY_GROUP ;
 int WMI_KEY_PAIRWISE ;
 int WMI_KEY_TX_USAGE ;
 int ath10k_install_key (struct ath10k_vif*,int *,int ,int const*,int ) ;
 struct ath10k_peer* ath10k_peer_find (struct ath10k*,int ,int const*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_set_param (struct ath10k*,int ,int ,int) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_install_peer_wep_keys(struct ath10k_vif *arvif,
     const u8 *addr)
{
 struct ath10k *ar = arvif->ar;
 struct ath10k_peer *peer;
 int ret;
 int i;
 u32 flags;

 lockdep_assert_held(&ar->conf_mutex);

 if (WARN_ON(arvif->vif->type != 128 &&
      arvif->vif->type != 129 &&
      arvif->vif->type != NL80211_IFTYPE_MESH_POINT))
  return -EINVAL;

 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find(ar, arvif->vdev_id, addr);
 spin_unlock_bh(&ar->data_lock);

 if (!peer)
  return -ENOENT;

 for (i = 0; i < ARRAY_SIZE(arvif->wep_keys); i++) {
  if (arvif->wep_keys[i] == ((void*)0))
   continue;

  switch (arvif->vif->type) {
  case 128:
   flags = WMI_KEY_PAIRWISE;

   if (arvif->def_wep_key_idx == i)
    flags |= WMI_KEY_TX_USAGE;

   ret = ath10k_install_key(arvif, arvif->wep_keys[i],
       SET_KEY, addr, flags);
   if (ret < 0)
    return ret;
   break;
  case 129:
   ret = ath10k_install_key(arvif, arvif->wep_keys[i],
       SET_KEY, addr,
       WMI_KEY_PAIRWISE);
   if (ret < 0)
    return ret;

   ret = ath10k_install_key(arvif, arvif->wep_keys[i],
       SET_KEY, addr, WMI_KEY_GROUP);
   if (ret < 0)
    return ret;
   break;
  default:
   WARN_ON(1);
   return -EINVAL;
  }

  spin_lock_bh(&ar->data_lock);
  peer->keys[i] = arvif->wep_keys[i];
  spin_unlock_bh(&ar->data_lock);
 }
 if (arvif->vif->type != 129)
  return 0;

 if (arvif->def_wep_key_idx == -1)
  return 0;

 ret = ath10k_wmi_vdev_set_param(arvif->ar,
     arvif->vdev_id,
     arvif->ar->wmi.vdev_param->def_keyid,
     arvif->def_wep_key_idx);
 if (ret) {
  ath10k_warn(ar, "failed to re-set def wpa key idxon vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 return 0;
}
