
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct wmi_peer_assoc_complete_arg {int peer_num_spatial_streams; int peer_caps; int peer_listen_intval; int peer_flags; int peer_aid; int vdev_id; int addr; } ;
struct TYPE_8__ {int assoc_capability; int aid; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_4__ bss_conf; scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; int aid; } ;
struct ath10k_vif {TYPE_3__* ar; int vdev_id; } ;
struct ath10k {int conf_mutex; } ;
struct TYPE_6__ {TYPE_1__* peer_flags; } ;
struct TYPE_7__ {TYPE_2__ wmi; } ;
struct TYPE_5__ {int auth; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int ath10k_peer_assoc_h_listen_intval (struct ath10k*,struct ieee80211_vif*) ;
 int ether_addr_copy (int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_peer_assoc_h_basic(struct ath10k *ar,
          struct ieee80211_vif *vif,
          struct ieee80211_sta *sta,
          struct wmi_peer_assoc_complete_arg *arg)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 u32 aid;

 lockdep_assert_held(&ar->conf_mutex);

 if (vif->type == NL80211_IFTYPE_STATION)
  aid = vif->bss_conf.aid;
 else
  aid = sta->aid;

 ether_addr_copy(arg->addr, sta->addr);
 arg->vdev_id = arvif->vdev_id;
 arg->peer_aid = aid;
 arg->peer_flags |= arvif->ar->wmi.peer_flags->auth;
 arg->peer_listen_intval = ath10k_peer_assoc_h_listen_intval(ar, vif);
 arg->peer_num_spatial_streams = 1;
 arg->peer_caps = vif->bss_conf.assoc_capability;
}
