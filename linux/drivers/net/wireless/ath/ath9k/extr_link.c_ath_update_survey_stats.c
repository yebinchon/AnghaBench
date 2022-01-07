
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct survey_info {int filled; unsigned int time; unsigned int time_busy; unsigned int time_rx; unsigned int time_tx; } ;
struct ath_softc {struct survey_info* survey; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ power_mode; int * curchan; int * channels; } ;
struct ath_cycle_counters {unsigned int cycles; unsigned int rx_busy; unsigned int rx_frame; unsigned int tx_frame; } ;
struct ath_common {int clockrate; struct ath_cycle_counters cc_survey; } ;


 scalar_t__ ATH9K_PM_AWAKE ;
 int SURVEY_INFO_TIME ;
 int SURVEY_INFO_TIME_BUSY ;
 int SURVEY_INFO_TIME_RX ;
 int SURVEY_INFO_TIME_TX ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_hw_cycle_counters_update (struct ath_common*) ;
 int ath_update_survey_nf (struct ath_softc*,int) ;
 int memset (struct ath_cycle_counters*,int ,int) ;

int ath_update_survey_stats(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 int pos = ah->curchan - &ah->channels[0];
 struct survey_info *survey = &sc->survey[pos];
 struct ath_cycle_counters *cc = &common->cc_survey;
 unsigned int div = common->clockrate * 1000;
 int ret = 0;

 if (!ah->curchan)
  return -1;

 if (ah->power_mode == ATH9K_PM_AWAKE)
  ath_hw_cycle_counters_update(common);

 if (cc->cycles > 0) {
  survey->filled |= SURVEY_INFO_TIME |
   SURVEY_INFO_TIME_BUSY |
   SURVEY_INFO_TIME_RX |
   SURVEY_INFO_TIME_TX;
  survey->time += cc->cycles / div;
  survey->time_busy += cc->rx_busy / div;
  survey->time_rx += cc->rx_frame / div;
  survey->time_tx += cc->tx_frame / div;
 }

 if (cc->cycles < div)
  return -1;

 if (cc->cycles > 0)
  ret = cc->rx_busy * 100 / cc->cycles;

 memset(cc, 0, sizeof(*cc));

 ath_update_survey_nf(sc, pos);

 return ret;
}
