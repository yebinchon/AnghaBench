
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_nvm_data {struct ieee80211_channel* channels; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int band; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;



int iwl_init_sband_channels(struct iwl_nvm_data *data,
       struct ieee80211_supported_band *sband,
       int n_channels, enum nl80211_band band)
{
 struct ieee80211_channel *chan = &data->channels[0];
 int n = 0, idx = 0;

 while (idx < n_channels && chan->band != band)
  chan = &data->channels[++idx];

 sband->channels = &data->channels[idx];

 while (idx < n_channels && chan->band == band) {
  chan = &data->channels[++idx];
  n++;
 }

 sband->n_channels = n;

 return n;
}
