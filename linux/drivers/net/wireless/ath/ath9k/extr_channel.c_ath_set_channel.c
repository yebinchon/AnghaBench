
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct survey_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ radar_enabled; } ;
struct ieee80211_hw {TYPE_2__ conf; } ;
struct ieee80211_channel {int hw_value; int center_freq; } ;
struct cfg80211_chan_def {int width; struct ieee80211_channel* chan; } ;
struct TYPE_8__ {scalar_t__ spectral_mode; } ;
struct ath_softc {TYPE_4__ spec_priv; struct ath_hw* sc_ah; TYPE_3__* survey; TYPE_3__* cur_survey; TYPE_1__* cur_chan; struct ieee80211_hw* hw; } ;
struct ath_hw {struct ath9k_channel* channels; struct ath9k_channel* curchan; } ;
struct ath_common {int op_flags; int cc_lock; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_7__ {int filled; } ;
struct TYPE_5__ {int offchannel; struct cfg80211_chan_def chandef; } ;


 int ATH9K_RX_FILTER_PHYERR ;
 int ATH9K_RX_FILTER_PHYRADAR ;
 int ATH_OP_INVALID ;
 int ATH_OP_SCANNING ;
 int CONFIG ;
 int DFS ;
 int EIO ;
 scalar_t__ SPECTRAL_CHANSCAN ;
 int SURVEY_INFO_IN_USE ;
 int ath9k_cmn_get_channel (struct ieee80211_hw*,struct ath_hw*,struct cfg80211_chan_def*) ;
 int ath9k_cmn_spectral_scan_trigger (struct ath_common*,TYPE_4__*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_getrxfilter (struct ath_hw*) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,...) ;
 int ath_reset (struct ath_softc*,struct ath9k_channel*) ;
 int ath_update_survey_nf (struct ath_softc*,int) ;
 int ath_update_survey_stats (struct ath_softc*) ;
 int memset (TYPE_3__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath_set_channel(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_hw *hw = sc->hw;
 struct ath9k_channel *hchan;
 struct cfg80211_chan_def *chandef = &sc->cur_chan->chandef;
 struct ieee80211_channel *chan = chandef->chan;
 int pos = chan->hw_value;
 unsigned long flags;
 int old_pos = -1;
 int r;

 if (test_bit(ATH_OP_INVALID, &common->op_flags))
  return -EIO;

 if (ah->curchan)
  old_pos = ah->curchan - &ah->channels[0];

 ath_dbg(common, CONFIG, "Set channel: %d MHz width: %d\n",
  chan->center_freq, chandef->width);


 spin_lock_irqsave(&common->cc_lock, flags);
 ath_update_survey_stats(sc);
 spin_unlock_irqrestore(&common->cc_lock, flags);

 ath9k_cmn_get_channel(hw, ah, chandef);






 if (!sc->cur_chan->offchannel && sc->cur_survey != &sc->survey[pos]) {
  if (sc->cur_survey)
   sc->cur_survey->filled &= ~SURVEY_INFO_IN_USE;

  sc->cur_survey = &sc->survey[pos];

  memset(sc->cur_survey, 0, sizeof(struct survey_info));
  sc->cur_survey->filled |= SURVEY_INFO_IN_USE;
 } else if (!(sc->survey[pos].filled & SURVEY_INFO_IN_USE)) {
  memset(&sc->survey[pos], 0, sizeof(struct survey_info));
 }

 hchan = &sc->sc_ah->channels[pos];
 r = ath_reset(sc, hchan);
 if (r)
  return r;





 if (old_pos >= 0)
  ath_update_survey_nf(sc, old_pos);




 if (hw->conf.radar_enabled) {
  u32 rxfilter;

  rxfilter = ath9k_hw_getrxfilter(ah);
  rxfilter |= ATH9K_RX_FILTER_PHYRADAR |
    ATH9K_RX_FILTER_PHYERR;
  ath9k_hw_setrxfilter(ah, rxfilter);
  ath_dbg(common, DFS, "DFS enabled at freq %d\n",
   chan->center_freq);
 } else {

  if (test_bit(ATH_OP_SCANNING, &common->op_flags) &&
   sc->spec_priv.spectral_mode == SPECTRAL_CHANSCAN)
   ath9k_cmn_spectral_scan_trigger(common, &sc->spec_priv);
 }

 return 0;
}
