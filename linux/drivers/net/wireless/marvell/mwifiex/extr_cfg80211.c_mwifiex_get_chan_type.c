
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_private {int dummy; } ;
struct TYPE_2__ {int chan_width; int chan2_offset; } ;
struct mwifiex_channel_band {TYPE_1__ band_config; } ;




 int IS_11N_ENABLED (struct mwifiex_private*) ;
 int NL80211_CHAN_HT20 ;
 int NL80211_CHAN_HT40MINUS ;
 int NL80211_CHAN_HT40PLUS ;
 int NL80211_CHAN_NO_HT ;
 int SEC_CHAN_ABOVE ;
 int mwifiex_get_chan_info (struct mwifiex_private*,struct mwifiex_channel_band*) ;

u8 mwifiex_get_chan_type(struct mwifiex_private *priv)
{
 struct mwifiex_channel_band channel_band;
 int ret;

 ret = mwifiex_get_chan_info(priv, &channel_band);

 if (!ret) {
  switch (channel_band.band_config.chan_width) {
  case 129:
   if (IS_11N_ENABLED(priv))
    return NL80211_CHAN_HT20;
   else
    return NL80211_CHAN_NO_HT;
  case 128:
   if (channel_band.band_config.chan2_offset ==
       SEC_CHAN_ABOVE)
    return NL80211_CHAN_HT40PLUS;
   else
    return NL80211_CHAN_HT40MINUS;
  default:
   return NL80211_CHAN_HT20;
  }
 }

 return NL80211_CHAN_HT20;
}
