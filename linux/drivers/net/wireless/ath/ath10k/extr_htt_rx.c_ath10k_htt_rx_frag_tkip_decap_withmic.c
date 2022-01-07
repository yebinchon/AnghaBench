
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int* data; scalar_t__ len; } ;


 int ATH10K_IEEE80211_EXTIV ;
 int EINVAL ;
 scalar_t__ IEEE80211_TKIP_ICV_LEN ;
 int IEEE80211_TKIP_IV_LEN ;
 int IEEE80211_WEP_IV_LEN ;
 int memmove (int*,int*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int ath10k_htt_rx_frag_tkip_decap_withmic(struct sk_buff *skb,
       u16 head_len,
       u16 hdr_len)
{
 u8 *ivp, *orig_hdr;

 orig_hdr = skb->data;
 ivp = orig_hdr + hdr_len + head_len;


 if (!(ivp[IEEE80211_WEP_IV_LEN - 1] & ATH10K_IEEE80211_EXTIV))
  return -EINVAL;

 memmove(orig_hdr + IEEE80211_TKIP_IV_LEN, orig_hdr, head_len + hdr_len);
 skb_pull(skb, IEEE80211_TKIP_IV_LEN);
 skb_trim(skb, skb->len - IEEE80211_TKIP_ICV_LEN);
 return 0;
}
