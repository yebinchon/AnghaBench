
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int cb; int protocol; int pkt_type; int dev; scalar_t__ data; } ;
struct libipw_rx_stats {int dummy; } ;
struct libipw_device {int dev; } ;
struct ieee80211_hdr {int frame_control; } ;


 int ETH_P_80211_RAW ;
 int PACKET_OTHERHOST ;
 int htons (int ) ;
 int le16_to_cpu (int ) ;
 int libipw_get_hdrlen (int ) ;
 int memset (int ,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void libipw_monitor_rx(struct libipw_device *ieee,
     struct sk_buff *skb,
     struct libipw_rx_stats *rx_stats)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 u16 fc = le16_to_cpu(hdr->frame_control);

 skb->dev = ieee->dev;
 skb_reset_mac_header(skb);
 skb_pull(skb, libipw_get_hdrlen(fc));
 skb->pkt_type = PACKET_OTHERHOST;
 skb->protocol = htons(ETH_P_80211_RAW);
 memset(skb->cb, 0, sizeof(skb->cb));
 netif_rx(skb);
}
