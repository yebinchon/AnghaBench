
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_tdls_peer_update_cmd_arg {int peer_state; int addr; int vdev_id; } ;
struct wmi_tdls_peer_capab_arg {int is_peer_responder; int peer_uapsd_queues; int peer_max_sp; } ;
struct wmi_channel_arg {int dummy; } ;
struct ieee80211_sta {int tdls_initiator; int uapsd_queues; int max_sp; int addr; } ;
struct ath10k {int conf_mutex; } ;
typedef enum wmi_tdls_peer_state { ____Placeholder_wmi_tdls_peer_state } wmi_tdls_peer_state ;


 int WMI_TDLS_PEER_STATE_CONNECTED ;
 int ath10k_warn (struct ath10k*,char*,int ,int ,int) ;
 int ath10k_wmi_tdls_peer_update (struct ath10k*,struct wmi_tdls_peer_update_cmd_arg*,struct wmi_tdls_peer_capab_arg*,struct wmi_channel_arg*) ;
 int ether_addr_copy (int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_mac_tdls_peer_update(struct ath10k *ar, u32 vdev_id,
           struct ieee80211_sta *sta,
           enum wmi_tdls_peer_state state)
{
 int ret;
 struct wmi_tdls_peer_update_cmd_arg arg = {};
 struct wmi_tdls_peer_capab_arg cap = {};
 struct wmi_channel_arg chan_arg = {};

 lockdep_assert_held(&ar->conf_mutex);

 arg.vdev_id = vdev_id;
 arg.peer_state = state;
 ether_addr_copy(arg.addr, sta->addr);

 cap.peer_max_sp = sta->max_sp;
 cap.peer_uapsd_queues = sta->uapsd_queues;

 if (state == WMI_TDLS_PEER_STATE_CONNECTED &&
     !sta->tdls_initiator)
  cap.is_peer_responder = 1;

 ret = ath10k_wmi_tdls_peer_update(ar, &arg, &cap, &chan_arg);
 if (ret) {
  ath10k_warn(ar, "failed to update tdls peer %pM on vdev %i: %i\n",
       arg.addr, vdev_id, ret);
  return ret;
 }

 return 0;
}
