
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct survey_info {int filled; int noise; int channel; } ;
struct TYPE_3__ {int chan; } ;
struct ieee80211_conf {TYPE_1__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath5k_hw* priv; } ;
struct ath_cycle_counters {unsigned int cycles; unsigned int rx_busy; unsigned int rx_frame; unsigned int tx_frame; } ;
struct ath_common {int clockrate; int cc_lock; struct ath_cycle_counters cc_survey; } ;
struct TYPE_4__ {unsigned int time; unsigned int time_busy; unsigned int time_rx; unsigned int time_tx; } ;
struct ath5k_hw {int ah_noise_floor; TYPE_2__ survey; } ;


 int ENOENT ;
 int SURVEY_INFO_IN_USE ;
 int SURVEY_INFO_NOISE_DBM ;
 int SURVEY_INFO_TIME ;
 int SURVEY_INFO_TIME_BUSY ;
 int SURVEY_INFO_TIME_RX ;
 int SURVEY_INFO_TIME_TX ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath_hw_cycle_counters_update (struct ath_common*) ;
 int memcpy (struct survey_info*,TYPE_2__*,int) ;
 int memset (struct ath_cycle_counters*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
ath5k_get_survey(struct ieee80211_hw *hw, int idx, struct survey_info *survey)
{
 struct ath5k_hw *ah = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 struct ath_common *common = ath5k_hw_common(ah);
 struct ath_cycle_counters *cc = &common->cc_survey;
 unsigned int div = common->clockrate * 1000;

 if (idx != 0)
  return -ENOENT;

 spin_lock_bh(&common->cc_lock);
 ath_hw_cycle_counters_update(common);
 if (cc->cycles > 0) {
  ah->survey.time += cc->cycles / div;
  ah->survey.time_busy += cc->rx_busy / div;
  ah->survey.time_rx += cc->rx_frame / div;
  ah->survey.time_tx += cc->tx_frame / div;
 }
 memset(cc, 0, sizeof(*cc));
 spin_unlock_bh(&common->cc_lock);

 memcpy(survey, &ah->survey, sizeof(*survey));

 survey->channel = conf->chandef.chan;
 survey->noise = ah->ah_noise_floor;
 survey->filled = SURVEY_INFO_NOISE_DBM |
   SURVEY_INFO_IN_USE |
   SURVEY_INFO_TIME |
   SURVEY_INFO_TIME_BUSY |
   SURVEY_INFO_TIME_RX |
   SURVEY_INFO_TIME_TX;

 return 0;
}
