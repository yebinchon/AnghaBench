
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct mt76_rx_status {int wcid; int chain_signal; int chains; int signal; int band; int nss; int rate_idx; int bw; int encoding; int enc_flags; int freq; int flag; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int chain_signal; int chains; int signal; int band; int nss; int rate_idx; int bw; int encoding; int enc_flags; int freq; int flag; } ;
typedef int mstat ;


 int BUILD_BUG_ON (int) ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 struct ieee80211_sta* wcid_to_sta (int ) ;

__attribute__((used)) static struct ieee80211_sta *mt76_rx_convert(struct sk_buff *skb)
{
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct mt76_rx_status mstat;

 mstat = *((struct mt76_rx_status *)skb->cb);
 memset(status, 0, sizeof(*status));

 status->flag = mstat.flag;
 status->freq = mstat.freq;
 status->enc_flags = mstat.enc_flags;
 status->encoding = mstat.encoding;
 status->bw = mstat.bw;
 status->rate_idx = mstat.rate_idx;
 status->nss = mstat.nss;
 status->band = mstat.band;
 status->signal = mstat.signal;
 status->chains = mstat.chains;

 BUILD_BUG_ON(sizeof(mstat) > sizeof(skb->cb));
 BUILD_BUG_ON(sizeof(status->chain_signal) !=
       sizeof(mstat.chain_signal));
 memcpy(status->chain_signal, mstat.chain_signal,
        sizeof(mstat.chain_signal));

 return wcid_to_sta(mstat.wcid);
}
