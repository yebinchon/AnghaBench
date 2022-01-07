
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; int antenna; int freq; int band; int mactime; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct ath_rx_status {int rs_status; int rs_antenna; int is_mybeacon; } ;
struct ath_hw {TYPE_2__* curchan; } ;
struct ath_htc_rx_status {int rs_tstamp; int rs_datalen; } ;
struct ath_common {struct ath_hw* ah; } ;
struct ath9k_htc_rxbuf {struct sk_buff* skb; } ;
struct ath9k_htc_priv {int rxfilter; int spec_priv; int ah; struct ieee80211_hw* hw; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct TYPE_3__ {int center_freq; int band; } ;


 int ATH9K_RXERR_PHY ;
 scalar_t__ HTC_RX_FRAME_HEADER_SIZE ;
 int RX_FLAG_MACTIME_END ;
 scalar_t__ ath9k_cmn_process_rate (struct ath_common*,struct ieee80211_hw*,struct ath_rx_status*,struct ieee80211_rx_status*) ;
 int ath9k_cmn_process_rssi (struct ath_common*,struct ieee80211_hw*,struct ath_rx_status*,struct ieee80211_rx_status*) ;
 int ath9k_cmn_rx_accept (struct ath_common*,struct ieee80211_hdr*,struct ieee80211_rx_status*,struct ath_rx_status*,int*,int ) ;
 int ath9k_cmn_rx_skb_postprocess (struct ath_common*,struct sk_buff*,struct ath_rx_status*,struct ieee80211_rx_status*,int) ;
 int ath9k_htc_err_stat_rx (struct ath9k_htc_priv*,struct ath_rx_status*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 scalar_t__ ath_cmn_process_fft (int *,struct ieee80211_hdr*,struct ath_rx_status*,int ) ;
 int ath_err (struct ath_common*,char*,scalar_t__,...) ;
 int ath_is_mybeacon (struct ath_common*,struct ieee80211_hdr*) ;
 scalar_t__ be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int rx_status_htc_to_ath (struct ath_rx_status*,struct ath_htc_rx_status*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static bool ath9k_rx_prepare(struct ath9k_htc_priv *priv,
        struct ath9k_htc_rxbuf *rxbuf,
        struct ieee80211_rx_status *rx_status)

{
 struct ieee80211_hdr *hdr;
 struct ieee80211_hw *hw = priv->hw;
 struct sk_buff *skb = rxbuf->skb;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath_hw *ah = common->ah;
 struct ath_htc_rx_status *rxstatus;
 struct ath_rx_status rx_stats;
 bool decrypt_error = 0;

 if (skb->len < HTC_RX_FRAME_HEADER_SIZE) {
  ath_err(common, "Corrupted RX frame, dropping (len: %d)\n",
   skb->len);
  goto rx_next;
 }

 rxstatus = (struct ath_htc_rx_status *)skb->data;

 if (be16_to_cpu(rxstatus->rs_datalen) -
     (skb->len - HTC_RX_FRAME_HEADER_SIZE) != 0) {
  ath_err(common,
   "Corrupted RX data len, dropping (dlen: %d, skblen: %d)\n",
   rxstatus->rs_datalen, skb->len);
  goto rx_next;
 }



 memset(rx_status, 0, sizeof(struct ieee80211_rx_status));



 rx_status_htc_to_ath(&rx_stats, rxstatus);
 ath9k_htc_err_stat_rx(priv, &rx_stats);
 rx_status->mactime = be64_to_cpu(rxstatus->rs_tstamp);
 skb_pull(skb, HTC_RX_FRAME_HEADER_SIZE);





 hdr = (struct ieee80211_hdr *)skb->data;





 if (rx_stats.rs_status & ATH9K_RXERR_PHY) {

  if (ath_cmn_process_fft(&priv->spec_priv, hdr,
        &rx_stats, rx_status->mactime)) {

  }
  goto rx_next;
 }

 if (!ath9k_cmn_rx_accept(common, hdr, rx_status, &rx_stats,
   &decrypt_error, priv->rxfilter))
  goto rx_next;

 ath9k_cmn_rx_skb_postprocess(common, skb, &rx_stats,
         rx_status, decrypt_error);

 if (ath9k_cmn_process_rate(common, hw, &rx_stats, rx_status))
  goto rx_next;

 rx_stats.is_mybeacon = ath_is_mybeacon(common, hdr);
 ath9k_cmn_process_rssi(common, hw, &rx_stats, rx_status);

 rx_status->band = ah->curchan->chan->band;
 rx_status->freq = ah->curchan->chan->center_freq;
 rx_status->antenna = rx_stats.rs_antenna;
 rx_status->flag |= RX_FLAG_MACTIME_END;

 return 1;
rx_next:
 return 0;
}
