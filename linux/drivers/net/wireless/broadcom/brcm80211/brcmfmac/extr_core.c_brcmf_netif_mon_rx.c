
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int RxStatus1; } ;
struct wlc_d11rxhdr {TYPE_1__ rxhdr; } ;
struct sk_buff {int len; int protocol; int pkt_type; int dev; scalar_t__ data; } ;
struct ieee80211_radiotap_header {void* it_len; } ;
struct brcmf_if {int ndev; } ;


 int BRCMF_FEAT_MONITOR_FMT_HW_RX_HDR ;
 int BRCMF_FEAT_MONITOR_FMT_RADIOTAP ;
 scalar_t__ D11_PHY_HDR_LEN ;
 int ETH_P_802_2 ;
 int PACKET_OTHERHOST ;
 int RXS_PBPRES ;
 scalar_t__ brcmf_feat_is_enabled (struct brcmf_if*,int ) ;
 int brcmf_netif_rx (struct brcmf_if*,struct sk_buff*) ;
 void* cpu_to_le16 (int) ;
 int htons (int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct ieee80211_radiotap_header*,int ,int) ;
 int skb_pull (struct sk_buff*,unsigned int) ;
 struct ieee80211_radiotap_header* skb_push (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

void brcmf_netif_mon_rx(struct brcmf_if *ifp, struct sk_buff *skb)
{
 if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MONITOR_FMT_RADIOTAP)) {

 } else if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_MONITOR_FMT_HW_RX_HDR)) {
  struct wlc_d11rxhdr *wlc_rxhdr = (struct wlc_d11rxhdr *)skb->data;
  struct ieee80211_radiotap_header *radiotap;
  unsigned int offset;
  u16 RxStatus1;

  RxStatus1 = le16_to_cpu(wlc_rxhdr->rxhdr.RxStatus1);

  offset = sizeof(struct wlc_d11rxhdr);



  if (RxStatus1 & RXS_PBPRES)
   offset += 2;
  offset += D11_PHY_HDR_LEN;

  skb_pull(skb, offset);


  radiotap = skb_push(skb, sizeof(*radiotap));
  memset(radiotap, 0, sizeof(*radiotap));
  radiotap->it_len = cpu_to_le16(sizeof(*radiotap));


  skb->len -= 4;
 } else {
  struct ieee80211_radiotap_header *radiotap;


  radiotap = skb_push(skb, sizeof(*radiotap));
  memset(radiotap, 0, sizeof(*radiotap));
  radiotap->it_len = cpu_to_le16(sizeof(*radiotap));


  skb->len -= 4;
 }

 skb->dev = ifp->ndev;
 skb_reset_mac_header(skb);
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = htons(ETH_P_802_2);

 brcmf_netif_rx(ifp, skb);
}
