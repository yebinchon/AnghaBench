
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct iwl_nvm_data {struct ieee80211_channel* channels; } ;
struct iwl_eeprom_channel {int flags; int max_power_avg; } ;
struct ieee80211_channel {int band; scalar_t__ hw_value; int flags; } ;
struct device {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int ACTIVE ;
 int CHECK_AND_PRINT (int ) ;
 int DFS ;
 int EEPROM_CHANNEL_IBSS ;
 int EEPROM_CHANNEL_RADAR ;
 int EEPROM_CHANNEL_VALID ;
 int IBSS ;
 int IWL_DEBUG_EEPROM (struct device*,char*,scalar_t__,char*,int ,int ,int ,int ,int ,int,int ,char*) ;
 int NL80211_BAND_5GHZ ;
 int RADAR ;
 int WIDE ;

__attribute__((used)) static void iwl_mod_ht40_chan_info(struct device *dev,
       struct iwl_nvm_data *data, int n_channels,
       enum nl80211_band band, u16 channel,
       const struct iwl_eeprom_channel *eeprom_ch,
       u8 clear_ht40_extension_channel)
{
 struct ieee80211_channel *chan = ((void*)0);
 int i;

 for (i = 0; i < n_channels; i++) {
  if (data->channels[i].band != band)
   continue;
  if (data->channels[i].hw_value != channel)
   continue;
  chan = &data->channels[i];
  break;
 }

 if (!chan)
  return;

 IWL_DEBUG_EEPROM(dev,
    "HT40 Ch. %d [%sGHz] %s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\n",
    channel,
    band == NL80211_BAND_5GHZ ? "5.2" : "2.4",
    CHECK_AND_PRINT(IBSS),
    CHECK_AND_PRINT(ACTIVE),
    CHECK_AND_PRINT(RADAR),
    CHECK_AND_PRINT(WIDE),
    CHECK_AND_PRINT(DFS),
    eeprom_ch->flags,
    eeprom_ch->max_power_avg,
    ((eeprom_ch->flags & EEPROM_CHANNEL_IBSS) &&
     !(eeprom_ch->flags & EEPROM_CHANNEL_RADAR)) ? ""
              : "not ");

 if (eeprom_ch->flags & EEPROM_CHANNEL_VALID)
  chan->flags &= ~clear_ht40_extension_channel;
}
