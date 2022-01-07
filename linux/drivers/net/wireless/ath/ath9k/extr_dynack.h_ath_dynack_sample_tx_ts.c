
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ath_tx_status {int dummy; } ;
struct ath_hw {int dummy; } ;



__attribute__((used)) static inline void ath_dynack_sample_tx_ts(struct ath_hw *ah,
        struct sk_buff *skb,
        struct ath_tx_status *ts,
        struct ieee80211_sta *sta) {}
