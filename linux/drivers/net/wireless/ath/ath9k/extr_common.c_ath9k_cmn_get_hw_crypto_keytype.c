
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct TYPE_3__ {int cipher; } ;


 int ATH9K_KEY_TYPE_AES ;
 int ATH9K_KEY_TYPE_CLEAR ;
 int ATH9K_KEY_TYPE_TKIP ;
 int ATH9K_KEY_TYPE_WEP ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;





int ath9k_cmn_get_hw_crypto_keytype(struct sk_buff *skb)
{
 struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);

 if (tx_info->control.hw_key) {
  switch (tx_info->control.hw_key->cipher) {
  case 128:
  case 129:
   return ATH9K_KEY_TYPE_WEP;
  case 130:
   return ATH9K_KEY_TYPE_TKIP;
  case 131:
   return ATH9K_KEY_TYPE_AES;
  default:
   break;
  }
 }

 return ATH9K_KEY_TYPE_CLEAR;
}
