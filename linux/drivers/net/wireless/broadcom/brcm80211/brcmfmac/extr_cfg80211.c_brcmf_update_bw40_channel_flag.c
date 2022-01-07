
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {int flags; } ;
struct brcmu_chan {scalar_t__ sb; } ;


 scalar_t__ BRCMU_CHAN_SB_U ;
 int IEEE80211_CHAN_NO_HT40 ;
 int IEEE80211_CHAN_NO_HT40MINUS ;
 int IEEE80211_CHAN_NO_HT40PLUS ;

__attribute__((used)) static void brcmf_update_bw40_channel_flag(struct ieee80211_channel *channel,
        struct brcmu_chan *ch)
{
 u32 ht40_flag;

 ht40_flag = channel->flags & IEEE80211_CHAN_NO_HT40;
 if (ch->sb == BRCMU_CHAN_SB_U) {
  if (ht40_flag == IEEE80211_CHAN_NO_HT40)
   channel->flags &= ~IEEE80211_CHAN_NO_HT40;
  channel->flags |= IEEE80211_CHAN_NO_HT40PLUS;
 } else {




  channel->flags &= ~IEEE80211_CHAN_NO_HT40;
  if (ht40_flag == IEEE80211_CHAN_NO_HT40)
   channel->flags |= IEEE80211_CHAN_NO_HT40MINUS;
 }
}
