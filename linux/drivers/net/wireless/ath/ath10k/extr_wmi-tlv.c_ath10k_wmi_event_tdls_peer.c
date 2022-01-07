
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct wmi_tlv_tdls_peer_event {int vdev_id; TYPE_1__ peer_macaddr; int peer_reason; } ;
struct sk_buff {int len; int data; } ;
struct ieee80211_sta {int addr; } ;
struct ath10k_vif {int vif; } ;
struct ath10k {int hw; } ;


 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int NL80211_TDLS_TEARDOWN ;
 int WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE ;



 size_t WMI_TLV_TAG_STRUCT_TDLS_PEER_EVENT ;
 int __le32_to_cpu (int ) ;
 struct ath10k_vif* ath10k_get_arvif (struct ath10k*,int) ;
 int ath10k_warn (struct ath10k*,char*) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 struct ieee80211_sta* ieee80211_find_sta_by_ifaddr (int ,int ,int *) ;
 int ieee80211_tdls_oper_request (int ,int ,int ,int ,int ) ;
 int kfree (void const**) ;

__attribute__((used)) static void ath10k_wmi_event_tdls_peer(struct ath10k *ar, struct sk_buff *skb)
{
 struct ieee80211_sta *station;
 const struct wmi_tlv_tdls_peer_event *ev;
 const void **tb;
 struct ath10k_vif *arvif;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ath10k_warn(ar, "tdls peer failed to parse tlv");
  return;
 }
 ev = tb[WMI_TLV_TAG_STRUCT_TDLS_PEER_EVENT];
 if (!ev) {
  kfree(tb);
  ath10k_warn(ar, "tdls peer NULL event");
  return;
 }

 switch (__le32_to_cpu(ev->peer_reason)) {
 case 128:
 case 129:
 case 130:
  station = ieee80211_find_sta_by_ifaddr(ar->hw,
             ev->peer_macaddr.addr,
             ((void*)0));
  if (!station) {
   ath10k_warn(ar, "did not find station from tdls peer event");
   kfree(tb);
   return;
  }
  arvif = ath10k_get_arvif(ar, __le32_to_cpu(ev->vdev_id));
  ieee80211_tdls_oper_request(
     arvif->vif, station->addr,
     NL80211_TDLS_TEARDOWN,
     WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE,
     GFP_ATOMIC
     );
  break;
 }
 kfree(tb);
}
