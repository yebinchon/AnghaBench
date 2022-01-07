
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_channel {scalar_t__ band; int center_freq; } ;
struct cfg80211_chan_def {int width; struct ieee80211_channel* chan; int center_freq1; } ;
struct ath9k_channel {int channelFlags; struct ieee80211_channel* chan; int channel; } ;


 int CHANNEL_5GHZ ;
 int CHANNEL_HALF ;
 int CHANNEL_HT ;
 int CHANNEL_HT40MINUS ;
 int CHANNEL_HT40PLUS ;
 int CHANNEL_QUARTER ;
 scalar_t__ NL80211_BAND_5GHZ ;





 int WARN_ON (int) ;

__attribute__((used)) static void ath9k_cmn_update_ichannel(struct ath9k_channel *ichan,
          struct cfg80211_chan_def *chandef)
{
 struct ieee80211_channel *chan = chandef->chan;
 u16 flags = 0;

 ichan->channel = chan->center_freq;
 ichan->chan = chan;

 if (chan->band == NL80211_BAND_5GHZ)
  flags |= CHANNEL_5GHZ;

 switch (chandef->width) {
 case 128:
  flags |= CHANNEL_QUARTER;
  break;
 case 132:
  flags |= CHANNEL_HALF;
  break;
 case 130:
  break;
 case 131:
  flags |= CHANNEL_HT;
  break;
 case 129:
  if (chandef->center_freq1 > chandef->chan->center_freq)
   flags |= CHANNEL_HT40PLUS | CHANNEL_HT;
  else
   flags |= CHANNEL_HT40MINUS | CHANNEL_HT;
  break;
 default:
  WARN_ON(1);
 }

 ichan->channelFlags = flags;
}
