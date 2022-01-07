
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int center_freq; } ;
struct brcmf_p2p_info {int remain_on_channel_cookie; int remain_on_channel; } ;
struct brcmf_cfg80211_info {struct brcmf_p2p_info p2p; } ;
typedef int s32 ;


 int GFP_KERNEL ;
 int TRACE ;
 int brcmf_dbg (int ,char*,int ,unsigned int) ;
 int brcmf_p2p_discover_listen (struct brcmf_p2p_info*,int ,unsigned int) ;
 int brcmf_p2p_enable_discovery (struct brcmf_p2p_info*) ;
 int cfg80211_ready_on_channel (struct wireless_dev*,int ,struct ieee80211_channel*,unsigned int,int ) ;
 int ieee80211_frequency_to_channel (int ) ;
 int memcpy (int *,struct ieee80211_channel*,int) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

int brcmf_p2p_remain_on_channel(struct wiphy *wiphy, struct wireless_dev *wdev,
    struct ieee80211_channel *channel,
    unsigned int duration, u64 *cookie)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_p2p_info *p2p = &cfg->p2p;
 s32 err;
 u16 channel_nr;

 channel_nr = ieee80211_frequency_to_channel(channel->center_freq);
 brcmf_dbg(TRACE, "Enter, channel: %d, duration ms (%d)\n", channel_nr,
    duration);

 err = brcmf_p2p_enable_discovery(p2p);
 if (err)
  goto exit;
 err = brcmf_p2p_discover_listen(p2p, channel_nr, duration);
 if (err)
  goto exit;

 memcpy(&p2p->remain_on_channel, channel, sizeof(*channel));
 *cookie = p2p->remain_on_channel_cookie;
 cfg80211_ready_on_channel(wdev, *cookie, channel, duration, GFP_KERNEL);

exit:
 return err;
}
