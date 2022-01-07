
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; int * data; } ;
struct iwl_wowlan_status_data {int wakeup_reasons; int pattern_number; int wake_packet_bufsize; int wake_packet_length; int * wake_packet; } ;
struct iwl_mvm {int gtk_ivlen; int ptk_ivlen; scalar_t__ ptk_icvlen; scalar_t__ gtk_icvlen; int dev; } ;
struct ieee80211_vif {int type; int addr; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
struct cfg80211_wowlan_wakeup {int pattern_idx; int magic_pkt; int disconnect; int gtk_rekey_failure; int rfkill_release; int eap_identity_req; int four_way_handshake; int tcp_connlost; int tcp_nomoretokens; int tcp_match; int packet_present_len; int packet_len; int packet_80211; int * packet; } ;


 int GFP_KERNEL ;
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH ;
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON ;
 int IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST ;
 int IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE ;
 int IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE ;
 int IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET ;
 int IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS ;
 int IWL_WOWLAN_WAKEUP_BY_PATTERN ;
 int IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS ;
 int IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE ;
 int IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET ;
 int IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 scalar_t__ ieee80211_data_to_8023 (struct sk_buff*,int ,int ) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int ieee80211_report_wowlan_wakeup (struct ieee80211_vif*,struct cfg80211_wowlan_wakeup*,int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int pm_wakeup_event (int ,int ) ;
 int skb_put_data (struct sk_buff*,int const*,int) ;

__attribute__((used)) static void iwl_mvm_report_wakeup_reasons(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       struct iwl_wowlan_status_data *status)
{
 struct sk_buff *pkt = ((void*)0);
 struct cfg80211_wowlan_wakeup wakeup = {
  .pattern_idx = -1,
 };
 struct cfg80211_wowlan_wakeup *wakeup_report = &wakeup;
 u32 reasons = status->wakeup_reasons;

 if (reasons == IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS) {
  wakeup_report = ((void*)0);
  goto report;
 }

 pm_wakeup_event(mvm->dev, 0);

 if (reasons & IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET)
  wakeup.magic_pkt = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_PATTERN)
  wakeup.pattern_idx =
   status->pattern_number;

 if (reasons & (IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON |
         IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH))
  wakeup.disconnect = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE)
  wakeup.gtk_rekey_failure = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED)
  wakeup.rfkill_release = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST)
  wakeup.eap_identity_req = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE)
  wakeup.four_way_handshake = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS)
  wakeup.tcp_connlost = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE)
  wakeup.tcp_nomoretokens = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET)
  wakeup.tcp_match = 1;

 if (status->wake_packet_bufsize) {
  int pktsize = status->wake_packet_bufsize;
  int pktlen = status->wake_packet_length;
  const u8 *pktdata = status->wake_packet;
  struct ieee80211_hdr *hdr = (void *)pktdata;
  int truncated = pktlen - pktsize;


  if (WARN_ON_ONCE(truncated < 0))
   truncated = 0;

  if (ieee80211_is_data(hdr->frame_control)) {
   int hdrlen = ieee80211_hdrlen(hdr->frame_control);
   int ivlen = 0, icvlen = 4;

   pkt = alloc_skb(pktsize, GFP_KERNEL);
   if (!pkt)
    goto report;

   skb_put_data(pkt, pktdata, hdrlen);
   pktdata += hdrlen;
   pktsize -= hdrlen;

   if (ieee80211_has_protected(hdr->frame_control)) {






    if (is_multicast_ether_addr(hdr->addr1)) {
     ivlen = mvm->gtk_ivlen;
     icvlen += mvm->gtk_icvlen;
    } else {
     ivlen = mvm->ptk_ivlen;
     icvlen += mvm->ptk_icvlen;
    }
   }


   if (truncated >= icvlen) {
    icvlen = 0;
    truncated -= icvlen;
   } else {
    icvlen -= truncated;
    truncated = 0;
   }

   pktsize -= ivlen + icvlen;
   pktdata += ivlen;

   skb_put_data(pkt, pktdata, pktsize);

   if (ieee80211_data_to_8023(pkt, vif->addr, vif->type))
    goto report;
   wakeup.packet = pkt->data;
   wakeup.packet_present_len = pkt->len;
   wakeup.packet_len = pkt->len - truncated;
   wakeup.packet_80211 = 0;
  } else {
   int fcslen = 4;

   if (truncated >= 4) {
    truncated -= 4;
    fcslen = 0;
   } else {
    fcslen -= truncated;
    truncated = 0;
   }
   pktsize -= fcslen;
   wakeup.packet = status->wake_packet;
   wakeup.packet_present_len = pktsize;
   wakeup.packet_len = pktlen - truncated;
   wakeup.packet_80211 = 1;
  }
 }

 report:
 ieee80211_report_wowlan_wakeup(vif, wakeup_report, GFP_KERNEL);
 kfree_skb(pkt);
}
