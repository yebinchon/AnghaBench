
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int truesize; int len; scalar_t__ data; } ;
struct mwl8k_priv {TYPE_1__* hw; scalar_t__ ap_fw; } ;
struct ieee80211_hdr {int frame_control; } ;
struct mwl8k_dma_data {int fwlen; struct ieee80211_hdr wh; } ;
struct ieee80211_cts {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int GFP_ATOMIC ;
 scalar_t__ IEEE80211_QOS_CTL_LEN ;
 int REDUCED_TX_HEADROOM ;
 int cpu_to_le16 (int) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int memmove (struct ieee80211_hdr*,struct ieee80211_hdr*,int) ;
 int memset (void*,int ,int) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 int skb_push (struct sk_buff*,int) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static void
mwl8k_add_dma_header(struct mwl8k_priv *priv, struct sk_buff *skb,
      int head_pad, int tail_pad)
{
 struct ieee80211_hdr *wh;
 int hdrlen;
 int reqd_hdrlen;
 struct mwl8k_dma_data *tr;







 wh = (struct ieee80211_hdr *)skb->data;

 hdrlen = ieee80211_hdrlen(wh->frame_control);





 if (priv->ap_fw && (hdrlen < (sizeof(struct ieee80211_cts)
      + REDUCED_TX_HEADROOM))) {
  if (pskb_expand_head(skb, REDUCED_TX_HEADROOM, 0, GFP_ATOMIC)) {

   wiphy_err(priv->hw->wiphy,
     "Failed to reallocate TX buffer\n");
   return;
  }
  skb->truesize += REDUCED_TX_HEADROOM;
 }

 reqd_hdrlen = sizeof(*tr) + head_pad;

 if (hdrlen != reqd_hdrlen)
  skb_push(skb, reqd_hdrlen - hdrlen);

 if (ieee80211_is_data_qos(wh->frame_control))
  hdrlen -= IEEE80211_QOS_CTL_LEN;

 tr = (struct mwl8k_dma_data *)skb->data;
 if (wh != &tr->wh)
  memmove(&tr->wh, wh, hdrlen);
 if (hdrlen != sizeof(tr->wh))
  memset(((void *)&tr->wh) + hdrlen, 0, sizeof(tr->wh) - hdrlen);






 tr->fwlen = cpu_to_le16(skb->len - sizeof(*tr) + tail_pad);
}
