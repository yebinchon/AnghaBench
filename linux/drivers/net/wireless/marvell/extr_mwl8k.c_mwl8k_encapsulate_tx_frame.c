
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct mwl8k_priv {int dummy; } ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_key_conf {int iv_len; int cipher; } ;
struct ieee80211_hdr {int frame_control; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;




 scalar_t__ ieee80211_is_data (int ) ;
 int mwl8k_add_dma_header (struct mwl8k_priv*,struct sk_buff*,int,int) ;

__attribute__((used)) static void mwl8k_encapsulate_tx_frame(struct mwl8k_priv *priv,
  struct sk_buff *skb)
{
 struct ieee80211_hdr *wh;
 struct ieee80211_tx_info *tx_info;
 struct ieee80211_key_conf *key_conf;
 int data_pad;
 int head_pad = 0;

 wh = (struct ieee80211_hdr *)skb->data;

 tx_info = IEEE80211_SKB_CB(skb);

 key_conf = ((void*)0);
 if (ieee80211_is_data(wh->frame_control))
  key_conf = tx_info->control.hw_key;
 data_pad = 0;
 if (key_conf != ((void*)0)) {
  head_pad = key_conf->iv_len;
  switch (key_conf->cipher) {
  case 128:
  case 129:
   data_pad = 4;
   break;
  case 130:
   data_pad = 12;
   break;
  case 131:
   data_pad = 8;
   break;
  }
 }
 mwl8k_add_dma_header(priv, skb, head_pad, data_pad);
}
