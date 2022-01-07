
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_rx_status {int flag; int ampdu_reference; } ;
struct TYPE_2__ {int ampdu_ref; } ;
struct ath_softc {TYPE_1__ rx; } ;
struct ath_rx_status {int rs_flags; int rs_moreaggr; scalar_t__ rs_isaggr; } ;


 int ATH9K_RX_DELIM_CRC_PRE ;
 int RX_FLAG_AMPDU_DELIM_CRC_ERROR ;
 int RX_FLAG_AMPDU_DETAILS ;
 int RX_FLAG_AMPDU_IS_LAST ;
 int RX_FLAG_AMPDU_LAST_KNOWN ;

__attribute__((used)) static void ath9k_apply_ampdu_details(struct ath_softc *sc,
 struct ath_rx_status *rs, struct ieee80211_rx_status *rxs)
{
 if (rs->rs_isaggr) {
  rxs->flag |= RX_FLAG_AMPDU_DETAILS | RX_FLAG_AMPDU_LAST_KNOWN;

  rxs->ampdu_reference = sc->rx.ampdu_ref;

  if (!rs->rs_moreaggr) {
   rxs->flag |= RX_FLAG_AMPDU_IS_LAST;
   sc->rx.ampdu_ref++;
  }

  if (rs->rs_flags & ATH9K_RX_DELIM_CRC_PRE)
   rxs->flag |= RX_FLAG_AMPDU_DELIM_CRC_ERROR;
 }
}
