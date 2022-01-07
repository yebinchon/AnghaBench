
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ s32 ;
typedef int channel_ie ;


 scalar_t__ EPERM ;
 int IEEE80211_P2P_ATTR_LISTEN_CHANNEL ;
 int INFO ;
 scalar_t__ SOCIAL_CHAN_1 ;
 scalar_t__ SOCIAL_CHAN_2 ;
 scalar_t__ SOCIAL_CHAN_3 ;
 int brcmf_dbg (int ,char*,scalar_t__) ;
 scalar_t__ cfg80211_get_p2p_attr (scalar_t__ const*,int ,int ,scalar_t__*,int) ;

__attribute__((used)) static s32 brcmf_p2p_find_listen_channel(const u8 *ie, u32 ie_len)
{
 u8 channel_ie[5];
 s32 listen_channel;
 s32 err;

 err = cfg80211_get_p2p_attr(ie, ie_len,
        IEEE80211_P2P_ATTR_LISTEN_CHANNEL,
        channel_ie, sizeof(channel_ie));
 if (err < 0)
  return err;



 listen_channel = (s32)channel_ie[3 + 1];

 if (listen_channel == SOCIAL_CHAN_1 ||
     listen_channel == SOCIAL_CHAN_2 ||
     listen_channel == SOCIAL_CHAN_3) {
  brcmf_dbg(INFO, "Found my Listen Channel %d\n", listen_channel);
  return listen_channel;
 }

 return -EPERM;
}
