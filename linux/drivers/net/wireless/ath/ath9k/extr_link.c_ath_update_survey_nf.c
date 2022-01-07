
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct survey_info {int noise; int filled; } ;
struct ath_softc {struct survey_info* survey; struct ath_hw* sc_ah; } ;
struct ath_hw {struct ath9k_channel* channels; } ;
struct ath9k_channel {scalar_t__ noisefloor; } ;


 int SURVEY_INFO_NOISE_DBM ;
 int ath9k_hw_getchan_noise (struct ath_hw*,struct ath9k_channel*,scalar_t__) ;

void ath_update_survey_nf(struct ath_softc *sc, int channel)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath9k_channel *chan = &ah->channels[channel];
 struct survey_info *survey = &sc->survey[channel];

 if (chan->noisefloor) {
  survey->filled |= SURVEY_INFO_NOISE_DBM;
  survey->noise = ath9k_hw_getchan_noise(ah, chan,
             chan->noisefloor);
 }
}
