
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ar9170 {int hw; } ;


 int ENOMEM ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int carl9170_ba_check (struct ar9170*,int *,int) ;
 int carl9170_ps_beacon (struct ar9170*,int *,int) ;
 struct sk_buff* carl9170_rx_copy_data (int *,int) ;
 int ieee80211_rx (int ,struct sk_buff*) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;

__attribute__((used)) static int carl9170_handle_mpdu(struct ar9170 *ar, u8 *buf, int len,
    struct ieee80211_rx_status *status)
{
 struct sk_buff *skb;
 carl9170_ps_beacon(ar, buf, len);

 carl9170_ba_check(ar, buf, len);

 skb = carl9170_rx_copy_data(buf, len);
 if (!skb)
  return -ENOMEM;

 memcpy(IEEE80211_SKB_RXCB(skb), status, sizeof(*status));
 ieee80211_rx(ar->hw, skb);
 return 0;
}
