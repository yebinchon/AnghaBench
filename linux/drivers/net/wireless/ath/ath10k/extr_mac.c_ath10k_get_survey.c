
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct survey_info {int filled; int * channel; } ;
struct ieee80211_supported_band {int n_channels; int * channels; } ;
struct ieee80211_hw {TYPE_1__* wiphy; struct ath10k* priv; } ;
struct ath10k {int conf_mutex; int * rx_channel; int data_lock; struct survey_info* survey; } ;
struct TYPE_2__ {struct ieee80211_supported_band** bands; } ;


 int ENOENT ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int SURVEY_INFO_IN_USE ;
 int ath10k_mac_update_bss_chan_survey (struct ath10k*,int *) ;
 int memcpy (struct survey_info*,struct survey_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_get_survey(struct ieee80211_hw *hw, int idx,
        struct survey_info *survey)
{
 struct ath10k *ar = hw->priv;
 struct ieee80211_supported_band *sband;
 struct survey_info *ar_survey = &ar->survey[idx];
 int ret = 0;

 mutex_lock(&ar->conf_mutex);

 sband = hw->wiphy->bands[NL80211_BAND_2GHZ];
 if (sband && idx >= sband->n_channels) {
  idx -= sband->n_channels;
  sband = ((void*)0);
 }

 if (!sband)
  sband = hw->wiphy->bands[NL80211_BAND_5GHZ];

 if (!sband || idx >= sband->n_channels) {
  ret = -ENOENT;
  goto exit;
 }

 ath10k_mac_update_bss_chan_survey(ar, &sband->channels[idx]);

 spin_lock_bh(&ar->data_lock);
 memcpy(survey, ar_survey, sizeof(*survey));
 spin_unlock_bh(&ar->data_lock);

 survey->channel = &sband->channels[idx];

 if (ar->rx_channel == survey->channel)
  survey->filled |= SURVEY_INFO_IN_USE;

exit:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
