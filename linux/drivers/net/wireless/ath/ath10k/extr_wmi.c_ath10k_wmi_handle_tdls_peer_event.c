
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int addr; } ;
struct wmi_tdls_peer_event {TYPE_1__ peer_macaddr; int peer_reason; int peer_status; int vdev_id; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k_vif {int vif; } ;
struct ath10k_peer {int dummy; } ;
struct ath10k {int data_lock; } ;


 int ATH10K_DBG_WMI ;
 int GFP_ATOMIC ;
 int NL80211_TDLS_TEARDOWN ;
 int WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE ;
 int WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED ;




 int __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,...) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 struct ath10k_vif* ath10k_get_arvif (struct ath10k*,int) ;
 struct ath10k_peer* ath10k_peer_find (struct ath10k*,int,int) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ieee80211_tdls_oper_request (int ,int,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ath10k_wmi_handle_tdls_peer_event(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_tdls_peer_event *ev;
 struct ath10k_peer *peer;
 struct ath10k_vif *arvif;
 int vdev_id;
 int peer_status;
 int peer_reason;
 u8 reason;

 if (skb->len < sizeof(*ev)) {
  ath10k_err(ar, "received tdls peer event with invalid size (%d bytes)\n",
      skb->len);
  return;
 }

 ev = (struct wmi_tdls_peer_event *)skb->data;
 vdev_id = __le32_to_cpu(ev->vdev_id);
 peer_status = __le32_to_cpu(ev->peer_status);
 peer_reason = __le32_to_cpu(ev->peer_reason);

 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find(ar, vdev_id, ev->peer_macaddr.addr);
 spin_unlock_bh(&ar->data_lock);

 if (!peer) {
  ath10k_warn(ar, "failed to find peer entry for %pM\n",
       ev->peer_macaddr.addr);
  return;
 }

 switch (peer_status) {
 case 131:
  switch (peer_reason) {
  case 129:
  case 130:
  case 128:
   reason = WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE;
   break;
  default:
   reason = WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED;
   break;
  }

  arvif = ath10k_get_arvif(ar, vdev_id);
  if (!arvif) {
   ath10k_warn(ar, "received tdls peer event for invalid vdev id %u\n",
        vdev_id);
   return;
  }

  ieee80211_tdls_oper_request(arvif->vif, ev->peer_macaddr.addr,
         NL80211_TDLS_TEARDOWN, reason,
         GFP_ATOMIC);

  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "received tdls teardown event for peer %pM reason %u\n",
      ev->peer_macaddr.addr, peer_reason);
  break;
 default:
  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "received unknown tdls peer event %u\n",
      peer_status);
  break;
 }
}
