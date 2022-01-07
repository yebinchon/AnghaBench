
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rxpd {int nf; int snr; int rx_pkt_length; int rx_pkt_offset; } ;
struct TYPE_4__ {int center_freq; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct TYPE_6__ {scalar_t__ iftype; } ;
struct mwifiex_private {TYPE_2__ roc_cfg; TYPE_3__ wdev; int adapter; int mgmt_frame_mask; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int pkt_len ;


 int CAL_RSSI (int ,int ) ;
 int ERROR ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int cfg80211_rx_mgmt (TYPE_3__*,int ,int ,scalar_t__,int,int ) ;
 int cpu_to_le16 (int) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 int le16_to_cpu (int ) ;
 int memmove (int ,int ,int) ;
 int mwifiex_dbg (int ,int ,char*) ;
 scalar_t__ mwifiex_parse_mgmt_packet (struct mwifiex_private*,int *,int,struct rxpd*) ;
 int skb_pull (struct sk_buff*,int) ;

int
mwifiex_process_mgmt_packet(struct mwifiex_private *priv,
       struct sk_buff *skb)
{
 struct rxpd *rx_pd;
 u16 pkt_len;
 struct ieee80211_hdr *ieee_hdr;

 if (!skb)
  return -1;

 if (!priv->mgmt_frame_mask ||
     priv->wdev.iftype == NL80211_IFTYPE_UNSPECIFIED) {
  mwifiex_dbg(priv->adapter, ERROR,
       "do not receive mgmt frames on uninitialized intf");
  return -1;
 }

 rx_pd = (struct rxpd *)skb->data;

 skb_pull(skb, le16_to_cpu(rx_pd->rx_pkt_offset));
 skb_pull(skb, sizeof(pkt_len));

 pkt_len = le16_to_cpu(rx_pd->rx_pkt_length);

 ieee_hdr = (void *)skb->data;
 if (ieee80211_is_mgmt(ieee_hdr->frame_control)) {
  if (mwifiex_parse_mgmt_packet(priv, (u8 *)ieee_hdr,
           pkt_len, rx_pd))
   return -1;
 }

 memmove(skb->data + sizeof(struct ieee80211_hdr_3addr),
  skb->data + sizeof(struct ieee80211_hdr),
  pkt_len - sizeof(struct ieee80211_hdr));

 pkt_len -= ETH_ALEN + sizeof(pkt_len);
 rx_pd->rx_pkt_length = cpu_to_le16(pkt_len);

 cfg80211_rx_mgmt(&priv->wdev, priv->roc_cfg.chan.center_freq,
    CAL_RSSI(rx_pd->snr, rx_pd->nf), skb->data, pkt_len,
    0);

 return 0;
}
