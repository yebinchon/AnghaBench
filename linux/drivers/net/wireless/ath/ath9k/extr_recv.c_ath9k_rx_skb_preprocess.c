
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; int antenna; int freq; int band; int mactime; } ;
struct TYPE_9__ {scalar_t__ radar_enabled; } ;
struct ieee80211_hw {TYPE_2__ conf; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_13__ {int discard_next; int num_pkts; } ;
struct TYPE_14__ {scalar_t__ spectral_mode; } ;
struct ath_softc {TYPE_6__ rx; int chan_lock; TYPE_3__* cur_chan; TYPE_7__ spec_priv; struct ath_hw* sc_ah; struct ieee80211_hw* hw; } ;
struct ath_rx_status {int rs_status; int rs_datalen; int rs_more; int is_mybeacon; int rs_antenna; int rs_rate; } ;
struct TYPE_8__ {scalar_t__ rx_status_len; } ;
struct ath_hw {TYPE_5__* curchan; TYPE_1__ caps; } ;
struct ath_common {scalar_t__ rx_bufsize; } ;
struct TYPE_12__ {TYPE_4__* chan; } ;
struct TYPE_11__ {int center_freq; int band; } ;
struct TYPE_10__ {int rxfilter; } ;


 int ANY ;
 int ATH9K_RXERR_CORRUPT_DESC ;
 int ATH9K_RXERR_PHY ;
 int ATH_CHANCTX_EVENT_BEACON_RECEIVED ;
 int EINVAL ;
 int RX_FLAG_MACTIME_END ;
 int RX_STAT_INC (struct ath_softc*,int ) ;
 scalar_t__ SPECTRAL_DISABLED ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ath9k_cmn_process_rate (struct ath_common*,struct ieee80211_hw*,struct ath_rx_status*,struct ieee80211_rx_status*) ;
 int ath9k_cmn_process_rssi (struct ath_common*,struct ieee80211_hw*,struct ath_rx_status*,struct ieee80211_rx_status*) ;
 int ath9k_cmn_rx_accept (struct ath_common*,struct ieee80211_hdr*,struct ieee80211_rx_status*,struct ath_rx_status*,int*,int ) ;
 int ath9k_dfs_process_phyerr (struct ath_softc*,struct ieee80211_hdr*,struct ath_rx_status*,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ ath9k_is_chanctx_enabled () ;
 int ath9k_process_tsf (struct ath_rx_status*,struct ieee80211_rx_status*,int ) ;
 int ath_chanctx_beacon_recv_ev (struct ath_softc*,int ) ;
 scalar_t__ ath_cmn_process_fft (TYPE_7__*,struct ieee80211_hdr*,struct ath_rx_status*,int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;
 int ath_debug_stat_rx (struct ath_softc*,struct ath_rx_status*) ;
 scalar_t__ ath_is_mybeacon (struct ath_common*,struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_present (int ) ;
 int ieee80211_is_qos_nullfunc (int ) ;
 int rx_beacons ;
 int rx_len_err ;
 int rx_rate_err ;
 int rx_spectral ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath9k_rx_skb_preprocess(struct ath_softc *sc,
       struct sk_buff *skb,
       struct ath_rx_status *rx_stats,
       struct ieee80211_rx_status *rx_status,
       bool *decrypt_error, u64 tsf)
{
 struct ieee80211_hw *hw = sc->hw;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_hdr *hdr;
 bool discard_current = sc->rx.discard_next;
 bool is_phyerr;





 if (discard_current)
  goto corrupt;

 sc->rx.discard_next = 0;





 is_phyerr = rx_stats->rs_status & ATH9K_RXERR_PHY;
 if (!rx_stats->rs_datalen ||
     (rx_stats->rs_datalen < 10 && !is_phyerr)) {
  RX_STAT_INC(sc, rx_len_err);
  goto corrupt;
 }






 if (rx_stats->rs_datalen > (common->rx_bufsize - ah->caps.rx_status_len)) {
  RX_STAT_INC(sc, rx_len_err);
  goto corrupt;
 }


 if (rx_stats->rs_more)
  return 0;
 if (rx_stats->rs_status & ATH9K_RXERR_CORRUPT_DESC)
  goto corrupt;

 hdr = (struct ieee80211_hdr *) (skb->data + ah->caps.rx_status_len);

 ath9k_process_tsf(rx_stats, rx_status, tsf);
 ath_debug_stat_rx(sc, rx_stats);





 if (rx_stats->rs_status & ATH9K_RXERR_PHY) {







  if (hw->conf.radar_enabled) {
   ath9k_dfs_process_phyerr(sc, hdr, rx_stats,
       rx_status->mactime);
  } else if (sc->spec_priv.spectral_mode != SPECTRAL_DISABLED &&
      ath_cmn_process_fft(&sc->spec_priv, hdr, rx_stats,
            rx_status->mactime)) {
   RX_STAT_INC(sc, rx_spectral);
  }
  return -EINVAL;
 }





 spin_lock_bh(&sc->chan_lock);
 if (!ath9k_cmn_rx_accept(common, hdr, rx_status, rx_stats, decrypt_error,
     sc->cur_chan->rxfilter)) {
  spin_unlock_bh(&sc->chan_lock);
  return -EINVAL;
 }
 spin_unlock_bh(&sc->chan_lock);

 if (ath_is_mybeacon(common, hdr)) {
  RX_STAT_INC(sc, rx_beacons);
  rx_stats->is_mybeacon = 1;
 }




 if (WARN_ON(!ah->curchan))
  return -EINVAL;

 if (ath9k_cmn_process_rate(common, hw, rx_stats, rx_status)) {




  ath_dbg(common, ANY, "unsupported hw bitrate detected 0x%02x using 1 Mbit\n",
   rx_stats->rs_rate);
  RX_STAT_INC(sc, rx_rate_err);
  return -EINVAL;
 }

 if (ath9k_is_chanctx_enabled()) {
  if (rx_stats->is_mybeacon)
   ath_chanctx_beacon_recv_ev(sc,
        ATH_CHANCTX_EVENT_BEACON_RECEIVED);
 }

 ath9k_cmn_process_rssi(common, hw, rx_stats, rx_status);

 rx_status->band = ah->curchan->chan->band;
 rx_status->freq = ah->curchan->chan->center_freq;
 rx_status->antenna = rx_stats->rs_antenna;
 rx_status->flag |= RX_FLAG_MACTIME_END;







 return 0;

corrupt:
 sc->rx.discard_next = rx_stats->rs_more;
 return -EINVAL;
}
