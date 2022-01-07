
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_info {int const flags; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath10k_vif {int nohwcrypt; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_INJECTED ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int ieee80211_has_protected (int ) ;

__attribute__((used)) static bool ath10k_tx_h_use_hwcrypto(struct ieee80211_vif *vif,
         struct sk_buff *skb)
{
 const struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 const struct ieee80211_hdr *hdr = (void *)skb->data;
 const u32 mask = IEEE80211_TX_INTFL_DONT_ENCRYPT |
    IEEE80211_TX_CTL_INJECTED;

 if (!ieee80211_has_protected(hdr->frame_control))
  return 0;

 if ((info->flags & mask) == mask)
  return 0;

 if (vif)
  return !((struct ath10k_vif *)vif->drv_priv)->nohwcrypt;

 return 1;
}
