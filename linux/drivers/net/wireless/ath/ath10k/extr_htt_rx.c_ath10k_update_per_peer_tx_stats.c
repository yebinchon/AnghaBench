
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct rate_info {int flags; int nss; int mcs; int bw; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct TYPE_12__ {TYPE_3__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_4__ def; } ;
struct TYPE_13__ {int legacy; int mcs; int nss; int bw; TYPE_7__* rates; int flags; } ;
struct TYPE_14__ {TYPE_5__ status; int flags; } ;
struct ath10k_sta {TYPE_6__ tx_info; TYPE_5__ txrate; int last_tx_bitrate; TYPE_2__* arvif; } ;
struct ath10k_per_peer_tx_stats {scalar_t__ succ_pkts; int ratecode; int flags; } ;
struct ath10k {int hw; int data_lock; } ;
typedef scalar_t__ s8 ;
struct TYPE_15__ {int idx; int flags; int count; } ;
struct TYPE_11__ {int band; } ;
struct TYPE_10__ {TYPE_1__* vif; } ;
struct TYPE_9__ {int chanctx_conf; } ;


 int ATH10K_FW_SKIPPED_RATE_CTRL (int ) ;
 int ATH10K_HW_BW (int ) ;
 int ATH10K_HW_GI (int ) ;
 int ATH10K_HW_LEGACY_RATE (int ) ;
 int ATH10K_HW_MCS_RATE (int ) ;
 int ATH10K_HW_NSS (int ) ;
 int ATH10K_HW_PREAMBLE (int ) ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_80_MHZ_WIDTH ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ;
 int IEEE80211_TX_RC_VHT_MCS ;
 int IEEE80211_TX_STAT_ACK ;
 int NL80211_BAND_5GHZ ;


 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;




 int ath10k_accumulate_per_peer_tx_stats (struct ath10k*,struct ath10k_sta*,struct ath10k_per_peer_tx_stats*,scalar_t__) ;
 int ath10k_bw_to_mac80211_bw (int ) ;
 scalar_t__ ath10k_debug_is_extd_tx_stats_enabled (struct ath10k*) ;
 scalar_t__ ath10k_get_legacy_rate_idx (struct ath10k*,int) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int cfg80211_calculate_bitrate (TYPE_5__*) ;
 int ieee80211_rate_set_vht (TYPE_7__*,int,int) ;
 int ieee80211_tx_rate_update (int ,struct ieee80211_sta*,TYPE_6__*) ;
 int lockdep_assert_held (int *) ;
 int memset (TYPE_5__*,int ,int) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;

__attribute__((used)) static void
ath10k_update_per_peer_tx_stats(struct ath10k *ar,
    struct ieee80211_sta *sta,
    struct ath10k_per_peer_tx_stats *peer_stats)
{
 struct ath10k_sta *arsta = (struct ath10k_sta *)sta->drv_priv;
 struct ieee80211_chanctx_conf *conf = ((void*)0);
 u8 rate = 0, sgi;
 s8 rate_idx = 0;
 bool skip_auto_rate;
 struct rate_info txrate;

 lockdep_assert_held(&ar->data_lock);

 txrate.flags = ATH10K_HW_PREAMBLE(peer_stats->ratecode);
 txrate.bw = ATH10K_HW_BW(peer_stats->flags);
 txrate.nss = ATH10K_HW_NSS(peer_stats->ratecode);
 txrate.mcs = ATH10K_HW_MCS_RATE(peer_stats->ratecode);
 sgi = ATH10K_HW_GI(peer_stats->flags);
 skip_auto_rate = ATH10K_FW_SKIPPED_RATE_CTRL(peer_stats->flags);




 if (skip_auto_rate)
  return;

 if (txrate.flags == 128 && txrate.mcs > 9) {
  ath10k_warn(ar, "Invalid VHT mcs %hhd peer stats", txrate.mcs);
  return;
 }

 if (txrate.flags == 130 &&
     (txrate.mcs > 7 || txrate.nss < 1)) {
  ath10k_warn(ar, "Invalid HT mcs %hhd nss %hhd peer stats",
       txrate.mcs, txrate.nss);
  return;
 }

 memset(&arsta->txrate, 0, sizeof(arsta->txrate));
 memset(&arsta->tx_info.status, 0, sizeof(arsta->tx_info.status));
 if (txrate.flags == 131 ||
     txrate.flags == 129) {
  rate = ATH10K_HW_LEGACY_RATE(peer_stats->ratecode);

  if (rate == 6 && txrate.flags == 131)
   rate = 5;
  rate_idx = ath10k_get_legacy_rate_idx(ar, rate);
  if (rate_idx < 0)
   return;
  arsta->txrate.legacy = rate;
 } else if (txrate.flags == 130) {
  arsta->txrate.flags = RATE_INFO_FLAGS_MCS;
  arsta->txrate.mcs = txrate.mcs + 8 * (txrate.nss - 1);
 } else {
  arsta->txrate.flags = RATE_INFO_FLAGS_VHT_MCS;
  arsta->txrate.mcs = txrate.mcs;
 }

 switch (txrate.flags) {
 case 129:
  if (arsta->arvif && arsta->arvif->vif)
   conf = rcu_dereference(arsta->arvif->vif->chanctx_conf);
  if (conf && conf->def.chan->band == NL80211_BAND_5GHZ)
   arsta->tx_info.status.rates[0].idx = rate_idx - 4;
  break;
 case 131:
  arsta->tx_info.status.rates[0].idx = rate_idx;
  if (sgi)
   arsta->tx_info.status.rates[0].flags |=
    (IEEE80211_TX_RC_USE_SHORT_PREAMBLE |
     IEEE80211_TX_RC_SHORT_GI);
  break;
 case 130:
  arsta->tx_info.status.rates[0].idx =
    txrate.mcs + ((txrate.nss - 1) * 8);
  if (sgi)
   arsta->tx_info.status.rates[0].flags |=
     IEEE80211_TX_RC_SHORT_GI;
  arsta->tx_info.status.rates[0].flags |= IEEE80211_TX_RC_MCS;
  break;
 case 128:
  ieee80211_rate_set_vht(&arsta->tx_info.status.rates[0],
           txrate.mcs, txrate.nss);
  if (sgi)
   arsta->tx_info.status.rates[0].flags |=
      IEEE80211_TX_RC_SHORT_GI;
  arsta->tx_info.status.rates[0].flags |= IEEE80211_TX_RC_VHT_MCS;
  break;
 }

 arsta->txrate.nss = txrate.nss;
 arsta->txrate.bw = ath10k_bw_to_mac80211_bw(txrate.bw);
 arsta->last_tx_bitrate = cfg80211_calculate_bitrate(&arsta->txrate);
 if (sgi)
  arsta->txrate.flags |= RATE_INFO_FLAGS_SHORT_GI;

 switch (arsta->txrate.bw) {
 case 133:
  arsta->tx_info.status.rates[0].flags |=
    IEEE80211_TX_RC_40_MHZ_WIDTH;
  break;
 case 132:
  arsta->tx_info.status.rates[0].flags |=
    IEEE80211_TX_RC_80_MHZ_WIDTH;
  break;
 }

 if (peer_stats->succ_pkts) {
  arsta->tx_info.flags = IEEE80211_TX_STAT_ACK;
  arsta->tx_info.status.rates[0].count = 1;
  ieee80211_tx_rate_update(ar->hw, sta, &arsta->tx_info);
 }

 if (ath10k_debug_is_extd_tx_stats_enabled(ar))
  ath10k_accumulate_per_peer_tx_stats(ar, arsta, peer_stats,
          rate_idx);
}
