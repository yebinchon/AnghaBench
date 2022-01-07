
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int cb; int protocol; int pkt_type; int dev; scalar_t__ data; } ;
struct libipw_rx_stats {int dummy; } ;
struct libipw_hdr_4addr {int addr2; int addr3; int frame_ctl; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
struct ipw_rx_packet {TYPE_2__ u; } ;
struct ipw_rx_mem_buffer {struct sk_buff* skb; } ;
struct ipw_priv {int config; TYPE_3__* ieee; int bssid; } ;
struct TYPE_6__ {scalar_t__ iw_mode; int dev; } ;


 int CFG_NET_STATS ;
 int ETH_P_80211_STATS ;
 scalar_t__ IEEE80211_STYPE_BEACON ;
 scalar_t__ IEEE80211_STYPE_PROBE_RESP ;
 int IPW_DEBUG_HC (char*) ;
 scalar_t__ IPW_RX_FRAME_SIZE ;
 scalar_t__ IW_MODE_ADHOC ;
 int PACKET_OTHERHOST ;
 scalar_t__ WLAN_FC_GET_STYPE (scalar_t__) ;
 int cpu_to_be16 (int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ipw_add_station (struct ipw_priv*,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int libipw_rx_mgt (TYPE_3__*,struct libipw_hdr_4addr*,struct libipw_rx_stats*) ;
 int memcpy (int ,struct libipw_rx_stats*,int) ;
 int memset (int ,int ,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void ipw_handle_mgmt_packet(struct ipw_priv *priv,
       struct ipw_rx_mem_buffer *rxb,
       struct libipw_rx_stats *stats)
{
 struct sk_buff *skb = rxb->skb;
 struct ipw_rx_packet *pkt = (struct ipw_rx_packet *)skb->data;
 struct libipw_hdr_4addr *header = (struct libipw_hdr_4addr *)
     (skb->data + IPW_RX_FRAME_SIZE);

 libipw_rx_mgt(priv->ieee, header, stats);

 if (priv->ieee->iw_mode == IW_MODE_ADHOC &&
     ((WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl)) ==
       IEEE80211_STYPE_PROBE_RESP) ||
      (WLAN_FC_GET_STYPE(le16_to_cpu(header->frame_ctl)) ==
       IEEE80211_STYPE_BEACON))) {
  if (ether_addr_equal(header->addr3, priv->bssid))
   ipw_add_station(priv, header->addr2);
 }

 if (priv->config & CFG_NET_STATS) {
  IPW_DEBUG_HC("sending stat packet\n");



  skb_put(skb, le16_to_cpu(pkt->u.frame.length) +
   IPW_RX_FRAME_SIZE);


  skb_pull(skb, IPW_RX_FRAME_SIZE);


  memcpy(skb_push(skb, sizeof(*stats)), stats, sizeof(*stats));

  skb->dev = priv->ieee->dev;


  skb_reset_mac_header(skb);

  skb->pkt_type = PACKET_OTHERHOST;
  skb->protocol = cpu_to_be16(ETH_P_80211_STATS);
  memset(skb->cb, 0, sizeof(rxb->skb->cb));
  netif_rx(skb);
  rxb->skb = ((void*)0);
 }
}
