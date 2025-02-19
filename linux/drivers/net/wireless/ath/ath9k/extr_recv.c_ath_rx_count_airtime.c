
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rx_status {int enc_flags; scalar_t__ bw; scalar_t__ encoding; size_t rate_idx; size_t band; } ;
struct ieee80211_rate {int bitrate; } ;
struct ieee80211_hdr {int addr2; int frame_control; } ;
struct ath_softc {int hw; struct ath_hw* sc_ah; } ;
struct ath_rx_status {int rs_rate; int rs_datalen; } ;
struct ath_hw {int dummy; } ;
struct ath_common {TYPE_1__* sbands; } ;
struct TYPE_2__ {struct ieee80211_rate* bitrates; } ;


 int IEEE80211_QOS_CTL_TID_MASK ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ IS_CCK_RATE (int ) ;
 scalar_t__ RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;
 scalar_t__ RX_ENC_HT ;
 int WLAN_RC_PHY_CCK ;
 int WLAN_RC_PHY_OFDM ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_hw_computetxtime (struct ath_hw*,int,int,int ,size_t,int) ;
 scalar_t__ ath_pkt_duration (struct ath_softc*,size_t,int ,int,int,int) ;
 struct ieee80211_sta* ieee80211_find_sta_by_ifaddr (int ,int ,int *) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_sta_register_airtime (struct ieee80211_sta*,int,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void ath_rx_count_airtime(struct ath_softc *sc,
     struct ath_rx_status *rs,
     struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_sta *sta;
 struct ieee80211_rx_status *rxs;
 const struct ieee80211_rate *rate;
 bool is_sgi, is_40, is_sp;
 int phy;
 u16 len = rs->rs_datalen;
 u32 airtime = 0;
 u8 tidno;

 if (!ieee80211_is_data(hdr->frame_control))
  return;

 rcu_read_lock();

 sta = ieee80211_find_sta_by_ifaddr(sc->hw, hdr->addr2, ((void*)0));
 if (!sta)
  goto exit;
 tidno = skb->priority & IEEE80211_QOS_CTL_TID_MASK;

 rxs = IEEE80211_SKB_RXCB(skb);

 is_sgi = !!(rxs->enc_flags & RX_ENC_FLAG_SHORT_GI);
 is_40 = !!(rxs->bw == RATE_INFO_BW_40);
 is_sp = !!(rxs->enc_flags & RX_ENC_FLAG_SHORTPRE);

 if (!!(rxs->encoding == RX_ENC_HT)) {


  airtime += ath_pkt_duration(sc, rxs->rate_idx, len,
     is_40, is_sgi, is_sp);
 } else {

  phy = IS_CCK_RATE(rs->rs_rate) ? WLAN_RC_PHY_CCK : WLAN_RC_PHY_OFDM;
  rate = &common->sbands[rxs->band].bitrates[rxs->rate_idx];
  airtime += ath9k_hw_computetxtime(ah, phy, rate->bitrate * 100,
      len, rxs->rate_idx, is_sp);
 }

 ieee80211_sta_register_airtime(sta, tidno, 0, airtime);
exit:
 rcu_read_unlock();
}
