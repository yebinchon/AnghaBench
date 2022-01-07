
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct survey_info {int noise; int filled; int * channel; } ;
struct mwl8k_priv {int noise; int * survey; scalar_t__ ap_fw; } ;
struct ieee80211_supported_band {int n_channels; int * channels; } ;
struct TYPE_4__ {int * chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_1__* wiphy; struct ieee80211_conf conf; struct mwl8k_priv* priv; } ;
struct TYPE_3__ {struct ieee80211_supported_band** bands; } ;


 int ENOENT ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int SURVEY_INFO_NOISE_DBM ;
 int memcpy (struct survey_info*,int *,int) ;

__attribute__((used)) static int mwl8k_get_survey(struct ieee80211_hw *hw, int idx,
    struct survey_info *survey)
{
 struct mwl8k_priv *priv = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 struct ieee80211_supported_band *sband;

 if (priv->ap_fw) {
  sband = hw->wiphy->bands[NL80211_BAND_2GHZ];

  if (sband && idx >= sband->n_channels) {
   idx -= sband->n_channels;
   sband = ((void*)0);
  }

  if (!sband)
   sband = hw->wiphy->bands[NL80211_BAND_5GHZ];

  if (!sband || idx >= sband->n_channels)
   return -ENOENT;

  memcpy(survey, &priv->survey[idx], sizeof(*survey));
  survey->channel = &sband->channels[idx];

  return 0;
 }

 if (idx != 0)
  return -ENOENT;

 survey->channel = conf->chandef.chan;
 survey->filled = SURVEY_INFO_NOISE_DBM;
 survey->noise = priv->noise;

 return 0;
}
