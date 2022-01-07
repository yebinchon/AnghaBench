
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct wil6210_priv {struct cfg80211_chan_def monitor_chandef; } ;


 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;

__attribute__((used)) static int wil_cfg80211_set_channel(struct wiphy *wiphy,
        struct cfg80211_chan_def *chandef)
{
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);

 wil->monitor_chandef = *chandef;

 return 0;
}
