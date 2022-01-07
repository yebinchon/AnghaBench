
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_rx_status {size_t rate_idx; scalar_t__ bw; int enc_flags; } ;
struct ieee80211_hdr {int addr2; int frame_control; } ;
struct ath_softc {int hw; struct ath_hw* sc_ah; } ;
struct ath_rx_status {int rs_rate; } ;
struct ath_rx_rate_stats {TYPE_4__* ofdm_stats; TYPE_1__* cck_stats; TYPE_5__* ht_stats; } ;
struct ath_node {struct ath_rx_rate_stats rx_rate_stats; } ;
struct ath_hw {TYPE_3__* curchan; } ;
struct TYPE_10__ {int lgi_cnt; int sgi_cnt; int ht20_cnt; int ht40_cnt; } ;
struct TYPE_9__ {int ofdm_cnt; } ;
struct TYPE_8__ {TYPE_2__* chan; } ;
struct TYPE_7__ {scalar_t__ band; } ;
struct TYPE_6__ {int cck_lp_cnt; int cck_sp_cnt; } ;


 size_t ARRAY_SIZE (TYPE_5__*) ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ IS_CCK_RATE (int ) ;
 scalar_t__ IS_HT_RATE (int ) ;
 scalar_t__ IS_OFDM_RATE (int ) ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORTPRE ;
 int RX_ENC_FLAG_SHORT_GI ;
 struct ieee80211_sta* ieee80211_find_sta_by_ifaddr (int ,int ,int *) ;
 int ieee80211_is_data (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void ath_debug_rate_stats(struct ath_softc *sc,
     struct ath_rx_status *rs,
     struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ath_hw *ah = sc->sc_ah;
 struct ieee80211_rx_status *rxs;
 struct ath_rx_rate_stats *rstats;
 struct ieee80211_sta *sta;
 struct ath_node *an;

 if (!ieee80211_is_data(hdr->frame_control))
  return;

 rcu_read_lock();

 sta = ieee80211_find_sta_by_ifaddr(sc->hw, hdr->addr2, ((void*)0));
 if (!sta)
  goto exit;

 an = (struct ath_node *) sta->drv_priv;
 rstats = &an->rx_rate_stats;
 rxs = IEEE80211_SKB_RXCB(skb);

 if (IS_HT_RATE(rs->rs_rate)) {
  if (rxs->rate_idx >= ARRAY_SIZE(rstats->ht_stats))
   goto exit;

  if (rxs->bw == RATE_INFO_BW_40)
   rstats->ht_stats[rxs->rate_idx].ht40_cnt++;
  else
   rstats->ht_stats[rxs->rate_idx].ht20_cnt++;

  if (rxs->enc_flags & RX_ENC_FLAG_SHORT_GI)
   rstats->ht_stats[rxs->rate_idx].sgi_cnt++;
  else
   rstats->ht_stats[rxs->rate_idx].lgi_cnt++;

  goto exit;
 }

 if (IS_CCK_RATE(rs->rs_rate)) {
  if (rxs->enc_flags & RX_ENC_FLAG_SHORTPRE)
   rstats->cck_stats[rxs->rate_idx].cck_sp_cnt++;
  else
   rstats->cck_stats[rxs->rate_idx].cck_lp_cnt++;

  goto exit;
 }

 if (IS_OFDM_RATE(rs->rs_rate)) {
  if (ah->curchan->chan->band == NL80211_BAND_2GHZ)
   rstats->ofdm_stats[rxs->rate_idx - 4].ofdm_cnt++;
  else
   rstats->ofdm_stats[rxs->rate_idx].ofdm_cnt++;
 }
exit:
 rcu_read_unlock();
}
