
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int flags; int channel; } ;
struct il_priv {int band; TYPE_1__ staging; } ;
struct ieee80211_channel {int band; scalar_t__ hw_value; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int D_INFO (char*,scalar_t__,int) ;
 int NL80211_BAND_5GHZ ;
 int RXON_FLG_BAND_24G_MSK ;
 int cpu_to_le16 (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;

int
il_set_rxon_channel(struct il_priv *il, struct ieee80211_channel *ch)
{
 enum nl80211_band band = ch->band;
 u16 channel = ch->hw_value;

 if (le16_to_cpu(il->staging.channel) == channel && il->band == band)
  return 0;

 il->staging.channel = cpu_to_le16(channel);
 if (band == NL80211_BAND_5GHZ)
  il->staging.flags &= ~RXON_FLG_BAND_24G_MSK;
 else
  il->staging.flags |= RXON_FLG_BAND_24G_MSK;

 il->band = band;

 D_INFO("Staging channel set to %d [%d]\n", channel, band);

 return 0;
}
